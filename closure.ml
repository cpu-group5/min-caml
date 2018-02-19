type closure = { entry : Id.l; actual_fv : Id.t list }
type t = (* ¥¯¥í¡¼¥¸¥ãÊÑ´¹¸å¤Î¼° (caml2html: closure_t) *)
  | Unit
  | Int of int
  | Float of float
  | Neg of Id.t
  | Add of Id.t * Id.t
  | Sub of Id.t * Id.t
  | Mul of Id.t * Id.t
  | Div of Id.t * Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | IfEq of Id.t * Id.t * t * t
  | IfLE of Id.t * Id.t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | MakeCls of (Id.t * Type.t) * closure * t
  | AppCls of Id.t * Id.t list
  | AppDir of Id.l * Id.t list
  | Tuple of Id.t list
  | ConstTuple of Id.l
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Put of Id.t * Id.t * Id.t
  | ConstArray of Id.l
  | ExtArray of Id.l
  | Ftoi of Id.t
  | Itof of Id.t
  | FAbs of Id.t
  | FSqrt of Id.t
type fundef = { name : Id.l * Type.t;
                args : (Id.t * Type.t) list;
                formal_fv : (Id.t * Type.t) list;
                body : t }
type arraydef = { name : Id.l * Type.t;
                  size : int;
                  initv : t }
type tupledef = {name : Id.l * Type.t;
                 body : t list }

type prog = Prog of fundef list * t

let rec fv = function
  | Unit | Int(_) | Float(_) | ExtArray(_) | ConstArray(_) | ConstTuple(_) -> S.empty
  | Neg(x) | FNeg(x) -> S.singleton x
  | Add(x, y) | Sub(x, y) | Mul(x, y) | Div(x, y) | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) | Get(x, y) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2)| IfLE(x, y, e1, e2) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x) -> S.singleton x
  | MakeCls((x, t), { entry = l; actual_fv = ys }, e) -> S.remove x (S.union (S.of_list ys) (fv e))
  | AppCls(x, ys) -> S.of_list (x :: ys)
  | AppDir(_, xs) | Tuple(xs) -> S.of_list xs
  | LetTuple(xts, y, e) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xts)))
  | Put(x, y, z) -> S.of_list [x; y; z]
  | Ftoi(x) | Itof(x) -> S.singleton x
  | FAbs(x) | FSqrt(x) -> S.of_list [x]

let const_fv constenv e =
    S.filter (fun x -> M.mem x constenv) (fv e)

let rec insert_const constenv = function
    | Let(xt, e1, e2) ->
            let const_set = const_fv constenv e1 in
            let constenv' = M.filter (fun x -> (fun ct -> not (S.mem x const_set))) constenv in
            S.fold (fun x exp -> let (const, t) = M.find x constenv in
                                 Let((x, t), const, exp))
                const_set
                (Let(xt, e1, (insert_const constenv' e2)))
    | LetTuple(xts, y, e) ->
            (try
                let (const, t) = M.find y constenv in
                let constenv' = M.remove y constenv in
                let e' = insert_const constenv' e in
                Let((y, t), const, (LetTuple(xts, y, e')))
             with
                Not_found -> LetTuple(xts, y, insert_const constenv e))
    | e ->
            let const_set = const_fv constenv e in
            S.fold (fun x exp -> let (const, t) = M.find x constenv in
                                 Let((x, t), const, exp))
                    const_set
                    e

let toplevel : fundef list ref = ref []
let arrays : arraydef list ref = ref []
let tuples : tupledef list ref = ref []
type fundef_ext = | F of fundef | E
let lenv : (Id.l * fundef_ext) list ref = ref []

let rec eval constenv = function(*¿¿¿¿¿¿¿¿*)
  |Unit|Int(_)|Float(_)|ConstTuple(_)|ConstArray(_) as const ->
    Some const
  |Add(x,y) when M.mem x constenv&&M.mem y constenv ->
    let v1=(match M.find x constenv with
            |(Int(i),_)->i|_ ->assert false) in
    let v2=(match M.find y constenv with
            |(Int(i),_)->i|_ ->assert false) in          
    Some (Int(v1+v2))
  |Sub(x,y) when M.mem x constenv&&M.mem y constenv ->
    let v1=(match M.find x constenv with
            |(Int(i),_)->i|_ ->assert false) in
    let v2=(match M.find y constenv with
            |(Int(i),_)->i|_ ->assert false) in          
    Some (Int(v1-v2))
  |Mul(x,y) when M.mem x constenv&&M.mem y constenv ->
    let v1=(match M.find x constenv with
            |(Int(i),_)->i|_ ->assert false) in
    let v2=(match M.find y constenv with
            |(Int(i),_)->i|_ ->assert false) in          
    Some (Int(v1*v2))
  |Div(x,y) when M.mem x constenv&&M.mem y constenv ->
    let v1=(match M.find x constenv with
            |(Int(i),_)->i|_ ->assert false) in
    let v2=(match M.find y constenv with
            |(Int(i),_)->i|_ ->assert false) in          
    Some (Int(v1/v2))
  |Neg(x) when M.mem x constenv ->
    let v1=(match M.find x constenv with
            |(Int(i),_)->i|_->assert false) in
    Some (Int(-v1))
  |FNeg(x) when M.mem x constenv ->
    let v1=(match M.find x constenv with
            |(Float(d),_)->d|_->assert false) in
    Some (Float(-.v1))
  |FAdd(x,y) when M.mem x constenv &&M.mem y constenv ->
    let v1=(match M.find x constenv with
            |(Float(d),_)->d|_->assert false) in
    let v2=(match M.find y constenv with
            |(Float(d),_)->d|_->assert false) in
    Some (Float(v1+.v2))
  |FSub(x,y) when M.mem x constenv &&M.mem y constenv ->
    let v1=(match M.find x constenv with
            |(Float(d),_)->d|_->assert false) in
    let v2=(match M.find y constenv with
            |(Float(d),_)->d|_->assert false) in
    Some (Float(v1-.v2))
  |FMul(x,y) when M.mem x constenv &&M.mem y constenv ->
    let v1=(match M.find x constenv with
            |(Float(d),_)->d|_->assert false) in
    let v2=(match M.find y constenv with
            |(Float(d),_)->d|_->assert false) in
    Some (Float(v1*.v2))
  |FDiv(x,y) when M.mem x constenv &&M.mem y constenv ->
    let v1=(match M.find x constenv with
            |(Float(d),_)->d|_->assert false) in
    let v2=(match M.find y constenv with
            |(Float(d),_)->d|_->assert false) in
    Some (Float(v1/.v2))
  |IfEq(_)|IfLE(_)->None (*if¿¿¿¿¿¿*)
  |Let((x,t),e1,e2) ->
    (match eval constenv e1 with
     |Some const -> eval (M.add x (const,t) constenv) e2
     |None -> eval constenv e2)
  |Var(x) when M.mem x constenv->
    let (const,_)=M.find x constenv in
    Some const
  |MakeCls((x, t), c, e) ->
    eval constenv e
  |AppDir(_,_) | AppCls(_,_) -> None
  |Tuple _->None(*constTuple¿¿¿¿¿g¿¿¿¿¿¿*)
  |LetTuple(xts,y,e)->
    (try
      (match M.find y constenv with
       |ConstTuple(l),_->
         (match List.find (fun {name=(x,_);body=_} ->l=x) !tuples with
          |{name=_;body=y'}->
            let constenv'=List.fold_left2
                            (fun env (id,t) const ->M.add id (const,t) env)
                            constenv
                            xts
                            y' in
            eval constenv' e)
       |_ ->assert false)
    with
      Not_found->eval constenv e)
  |Get _|Put _ |ExtArray _ -> None
  |Ftoi _|Itof _|FAbs _|FSqrt _ -> None
  |_ ->None

let rec g env constenv known = function (* ¥¯¥í¡¼¥¸¥ãÊÑ´¹¥ë¡¼¥Á¥óËÜÂÎ (caml2html: closure_g) *)
  | KNormal.Unit -> Unit
  | KNormal.Int(i) -> Int(i)
  | KNormal.Float(d) -> Float(d)
  | KNormal.Neg(x) -> Neg(x)
  | KNormal.Add(x, y) -> Add(x, y)
  | KNormal.Sub(x, y) -> Sub(x, y)
  | KNormal.Mul(x, y) -> Mul(x, y)
  | KNormal.Div(x, y) -> Div(x, y)
  | KNormal.FNeg(x) -> FNeg(x)
  | KNormal.FAdd(x, y) -> FAdd(x, y)
  | KNormal.FSub(x, y) -> FSub(x, y)
  | KNormal.FMul(x, y) -> FMul(x, y)
  | KNormal.FDiv(x, y) -> FDiv(x, y)
  | KNormal.IfEq(x, y, e1, e2) -> IfEq(x, y, g env constenv known e1, g env constenv known e2)
  | KNormal.IfLE(x, y, e1, e2) -> IfLE(x, y, g env constenv known e1, g env constenv known e2)
  | KNormal.Let((x, t), e1, e2) -> 
          let e1' = g env constenv known e1 in
          (match eval constenv e1' with
          | Some const -> let e2' = g env (M.add x (const, t) constenv) known e2 in
                          Let((x, t), e1', e2')
          | None -> let e2' = g env constenv known e2 in
                    Let((x, t), e1', e2'))
          (*Let((x, t), g env constenv known e1, g (M.add x t env) constenv known e2)*)
  | KNormal.Var(x) -> Var(x)
  | KNormal.LetRec({ KNormal.name = (x, t); KNormal.args = yts; KNormal.body = e1 }, e2) -> (* ´Ø¿ôÄêµÁ¤Î¾ì¹ç (caml2html: closure_letrec) *)
      (* ´Ø¿ôÄêµÁlet rec x y1 ... yn = e1 in e2¤Î¾ì¹ç¤Ï¡¢
         x¤Ë¼«Í³ÊÑ¿ô¤¬¤Ê¤¤(closure¤ò²ð¤µ¤ºdirect¤Ë¸Æ¤Ó½Ð¤»¤ë)
         ¤È²¾Äê¤·¡¢known¤ËÄÉ²Ã¤·¤Æe1¤ò¥¯¥í¡¼¥¸¥ãÊÑ´¹¤·¤Æ¤ß¤ë *)
      let toplevel_backup = !toplevel in
      let env' = M.add x t env in
      let known' = S.add x known in
      let e1' = g (M.add_list yts env') constenv known' e1 in
      let e1' = insert_const constenv e1' in
      (* ËÜÅö¤Ë¼«Í³ÊÑ¿ô¤¬¤Ê¤«¤Ã¤¿¤«¡¢ÊÑ´¹·ë²Ìe1'¤ò³ÎÇ§¤¹¤ë *)
      (* Ãí°Õ: e1'¤Ëx¼«¿È¤¬ÊÑ¿ô¤È¤·¤Æ½Ð¸½¤¹¤ë¾ì¹ç¤Ïclosure¤¬É¬Í×!
         (thanks to nuevo-namasute and azounoman; test/cls-bug2.ml»²¾È) *)
      let zs = S.diff (fv e1') (S.of_list (List.map fst yts)) in
      let known', e1' =
        if S.is_empty zs then known', e1' else
        (* ÂÌÌÜ¤À¤Ã¤¿¤é¾õÂÖ(toplevel¤ÎÃÍ)¤òÌá¤·¤Æ¡¢¥¯¥í¡¼¥¸¥ãÊÑ´¹¤ò¤ä¤êÄ¾¤¹ *)
        (Format.eprintf "free variable(s) %s found in function %s@." (Id.pp_list (S.elements zs)) x;
         Format.eprintf "function %s cannot be directly applied in fact@." x;
         toplevel := toplevel_backup;
         let e1' = g (M.add_list yts env') constenv known e1 in
         let e1' = insert_const constenv e1' in
         known, e1') in
      let zs = S.elements (S.diff (fv e1') (S.add x (S.of_list (List.map fst yts)))) in (* ¼«Í³ÊÑ¿ô¤Î¥ê¥¹¥È *)
      let zts = List.map (fun z -> (z, M.find z env')) zs in (* ¤³¤³¤Ç¼«Í³ÊÑ¿ôz¤Î·¿¤ò°ú¤¯¤¿¤á¤Ë°ú¿ôenv¤¬É¬Í× *)
      toplevel := { name = (Id.L(x), t); args = yts; formal_fv = zts; body = e1' } :: !toplevel; (* ¥È¥Ã¥×¥ì¥Ù¥ë´Ø¿ô¤òÄÉ²Ã *)
      let e2' = g env' constenv known' e2 in
      if S.mem x (fv e2') then (* x¤¬ÊÑ¿ô¤È¤·¤Æe2'¤Ë½Ð¸½¤¹¤ë¤« *)
        MakeCls((x, t), { entry = Id.L(x); actual_fv = zs }, e2') (* ½Ð¸½¤·¤Æ¤¤¤¿¤éºï½ü¤·¤Ê¤¤ *)
      else
        (Format.eprintf "eliminating closure(s) %s@." x;
         e2') (* ½Ð¸½¤·¤Ê¤±¤ì¤ÐMakeCls¤òºï½ü *)
  | KNormal.App(x, ys) when S.mem x known -> (* ´Ø¿ôÅ¬ÍÑ¤Î¾ì¹ç (caml2html: closure_app) *)
      Format.eprintf "directly applying %s@." x;
      AppDir(Id.L(x), ys)
  | KNormal.App(f, xs) -> AppCls(f, xs)
  | KNormal.Tuple(xs) ->
          (try
              let const_xs_ts = List.map (fun x -> M.find x constenv) xs in
              let (const_xs, ts) = List.split const_xs_ts in
              let t = Type.Tuple(ts) in
              let x = Id.genid "const_tuple" in
              (tuples := { name = (Id.L(x), t); body = const_xs } :: !tuples);
              ConstTuple(Id.L(x))
           with Not_found -> Tuple(xs))
  | KNormal.LetTuple(xts, y, e) -> 
          (try
              (match M.find y constenv with
              | ConstTuple(l), _ ->
                      (match List.find (fun { name = (x, _); body = _ } -> l = x) !tuples with
                      | { name = _; body = y' } ->
                              let constenv' = List.fold_left2
                                         (fun env' (id, t) const -> M.add id (const, t) env')
                                         constenv xts y' in
                              LetTuple(xts, y, g env constenv' known e))
                      | _ -> assert false)
           with Not_found -> LetTuple(xts, y, g (M.add_list xts env) constenv known e))
  | KNormal.Get(x, y) -> Get(x, y)
  | KNormal.Put(x, y, z) -> Put(x, y, z)
  | KNormal.ExtArray(x) -> ExtArray(Id.L(x))
  | KNormal.ExtFunApp(x, [arg1; arg2]) when (x = "create_array" || x = "create_float_array") ->
          (try 
              let arg1' = (match M.find arg1 constenv with (Int(i), _) -> i | _ -> assert false) in
              let (arg2', t2) = M.find arg2 constenv in
              let x = Id.genid "const_array" in
              (arrays := { name = (Id.L(x), Type.Array(t2));
                           size = arg1';
                           initv = arg2'} :: !arrays);
              ConstArray(Id.L(x))
           with Not_found ->
              let ys = [arg1; arg2] in
              if (x = Id.string_to_id "int_of_float") then
                  let arg = List.hd ys in
                  Ftoi arg
              else if (x = Id.string_to_id "float_of_int") then
                  let arg = List.hd ys in
                  Itof arg
              else if (x = Id.string_to_id "fabs") then
                  let arg = List.hd ys in
                  FAbs arg
              else if (x = Id.string_to_id "sqrt") then
                  let arg = List.hd ys in
                  FSqrt arg
              else
              (lenv := (Id.L("min_caml_" ^ x), E) :: !lenv;
                AppDir(Id.L("min_caml_" ^ x), ys)))
  | KNormal.ExtFunApp(x, ys) ->
          if (x = Id.string_to_id "int_of_float") then
              let arg = List.hd ys in
              Ftoi arg
          else if (x = Id.string_to_id "float_of_int") then
              let arg = List.hd ys in
              Itof arg
          else if (x = Id.string_to_id "fabs") then
              let arg = List.hd ys in
              FAbs arg
          else if (x = Id.string_to_id "sqrt") then
              let arg = List.hd ys in
              FSqrt arg
          else
          (lenv := (Id.L("min_caml_" ^ x), E) :: !lenv;
            AppDir(Id.L("min_caml_" ^ x), ys))

(*
exception Error
exception Unify of Type.t * Type.t

let rec occur r1 = function (* occur check (caml2html: typing_occur) *)
  | Type.Fun(t2s, t2) -> List.exists (occur r1) t2s || occur r1 t2
  | Type.Tuple(t2s) -> List.exists (occur r1) t2s
  | Type.Array(t2) -> occur r1 t2
  | Type.Var(r2) when r1 == r2 -> true
  | Type.Var({ contents = None }) -> false
  | Type.Var({ contents = Some(t2) }) -> occur r1 t2
  | _ -> false

let rec unify t1 t2 = (* ·¿¤¬¹ç¤¦¤è¤¦¤Ë¡¢·¿ÊÑ¿ô¤Ø¤ÎÂåÆþ¤ò¤¹¤ë (caml2html: typing_unify) *)
  match t1, t2 with
  | Type.Unit, Type.Unit | Type.Bool, Type.Bool | Type.Int, Type.Int | Type.Float, Type.Float -> ()
  | Type.Fun(t1s, t1'), Type.Fun(t2s, t2') ->
      (try List.iter2 unify t1s t2s
      with Invalid_argument(_) -> raise (Unify(t1, t2)));
      unify t1' t2'
  | Type.Tuple(t1s), Type.Tuple(t2s) ->
      (try List.iter2 unify t1s t2s
      with Invalid_argument(_) -> raise (Unify(t1, t2)))
  | Type.Array(t1), Type.Array(t2) -> unify t1 t2
  | Type.Var(r1), Type.Var(r2) when r1 == r2 -> ()
  | Type.Var({ contents = Some(t1') }), _ -> unify t1' t2
  | _, Type.Var({ contents = Some(t2') }) -> unify t1 t2'
  | Type.Var({ contents = None } as r1), _ -> (* °ìÊý¤¬Ì¤ÄêµÁ¤Î·¿ÊÑ¿ô¤Î¾ì¹ç (caml2html: typing_undef) *)
      if occur r1 t2 then raise (Unify(t1, t2));
      r1 := Some(t2)
  | _, Type.Var({ contents = None } as r2) ->
      if occur r2 t1 then raise (Unify(t1, t2));
      r2 := Some(t1)
  | _, _ -> raise (Unify(t1, t2))

let rec findl l env =
    match env with
    | [] -> print_string " (findl) not found\n"; raise Not_found
    | x :: xs -> if fst x = l then snd x else findl l xs
 
let rec typing env e =
    match e with
    | Unit -> Type.Unit
    | Int _ -> Type.Int
    | Float _ -> Type.Float
    | Neg(x) ->
            let t = typing env (Var(x)) in
            (try unify Type.Int t with
                Unify _ -> raise (Error));
            Type.Int
    | Add(x1, x2) | Sub(x1, x2) | Mul(x1, x2) | Div(x1, x2) ->
            let t1 = typing env (Var(x1)) in
            let t2 = typing env (Var(x2)) in
            (try unify Type.Int t1 with
                Unify _ -> raise (Error));
            (try unify Type.Int t2 with
                Unify _ -> raise (Error));
            Type.Int
    | FNeg(x) ->
            let t = typing env (Var(x)) in
            (try unify Type.Float t with
                Unify _ -> raise (Error));
            Type.Float
    | FAdd(x1, x2) | FSub(x1, x2) | FMul(x1, x2) | FDiv(x1, x2) ->
            let t1 = typing env (Var(x1)) in
            let t2 = typing env (Var(x2)) in
            (try unify Type.Float t1 with
                Unify _ -> raise (Error));
            (try unify Type.Float t2 with
                Unify _ -> raise (Error));
            Type.Float
    | IfEq(x, y, e1, e2) | IfLE(x, y, e1, e2) ->
            let xt = typing env (Var(x)) in
            let yt = typing env (Var(y)) in
            (try unify xt yt with
                Unify _ -> raise (Error));
            let t1 = typing env e1 in
            let t2 = typing env e2 in
            (try unify t1 t2 with
                Unify _ -> raise (Error));
            t1
    | Let((x, t), e1, e2) ->
            let t1 = typing env e1 in
            (try unify t t1 with
                Unify _ -> raise (Error));
            typing (M.add x t env) e2
    | Var(x)-> 
            (try M.find x env with
                Not_found -> print_string x; print_string " not found\n"; raise (Error))
    | MakeCls((x, t), c, e) ->
            let rec set x =
                match x with
                | [] -> []
                | x :: xs -> (x, typing env (Var(x))) :: (set xs)
            in
            let f = findl c.entry !lenv in
            (match f with
            | E -> t
            | F f ->
                let newenv = M.add_list f.args (M.add_list (set c.actual_fv) env) in
                let t1 = typing (M.add x t newenv) e in
                (try unify t t1 with
                    Unify _ -> raise (Error));
                t)
    | AppCls (x, xs) ->
            let t = Type.gentyp () in
            let var_typing x = typing env (Var(x)) in
            let tx = (Type.Fun(List.map var_typing xs, t)) in
            let tf = typing env (Var(x)) in
            (try unify tx tf with
                Unify _ -> raise (Error));
            t
            
    | AppDir(l, xs) ->
            let t = Type.gentyp () in
            let var_typing x = typing env (Var(x)) in
            let tx = (Type.Fun(List.map var_typing xs, t)) in
            let f = findl l !lenv in
            (match f with
            | E -> t
            | F f ->
                (*
                let newenv = M.add_list f.formal_fv (M.add_list f.args env) in
                let tf = (Type.Fun(List.map snd f.args, typing newenv f.body)) in
                *)
                let tf = snd f.name in
                (try unify tx tf with
                    Unify _ -> raise (Error));
                t)
    | Tuple(xs) ->
            let var_typing x = typing env (Var(x)) in
            Type.Tuple(List.map var_typing xs)
    | LetTuple(xts, x, e) ->
            let txs = Type.Tuple(List.map snd xts) in
            let t1 = typing env (Var(x)) in
            (try unify txs t1 with
                Unify _ -> raise (Error));
            typing (M.add_list xts env) e
    | Get(x1, x2) ->
            let t = Type.gentyp () in
            let t1 = typing env (Var(x1)) in
            (try unify (Type.Array(t)) t1 with
                Unify _ -> raise (Error));
            let t2 = typing env (Var(x2)) in
            (try unify Type.Int t2 with
                Unify _ -> raise (Error));
            t
     | Put(x1, x2, x3) ->
             let t1 = typing env (Var(x1)) in
             let t3 = typing env (Var(x3)) in
             (try unify (Type.Array(t3)) t1 with
                Unify _ -> raise (Error));
             let t2 = typing env (Var(x2)) in
             (try unify Type.Int t2 with
                Unify _ -> raise (Error));
             Type.Unit
      | ExtArray(l) ->
              let t = Type.gentyp () in
              lenv := (l, E) :: !lenv;
              t
      | Ftoi(_) | Itof(_) | FAbs(_) | FSqrt(_) ->
              Type.Float
    
let rec create_lenv fundefs =
    match fundefs with
    | [] -> ()
    | f :: fs -> lenv := (fst f.name, F f) :: !lenv; create_lenv fs

let check_type p =
    create_lenv (fst p);
    (try typing M.empty (snd p) with
        Error -> print_string "Fail Typing in closure.ml\n"; raise (Error));
    print_string "Pass Typing in closure.ml\n"
*)

let f e =
  toplevel := [];
  let e' = g M.empty M.empty S.empty e in
  arrays := List.rev !arrays;
  tuples := List.rev !tuples;
  (match !arrays with
  | [] -> print_string "ARRAYS IS EMPTYYY!!!!\n"
  | _ -> print_string "ARRAYS IS NOOOOOOOOOOT EMPTY\n");
  let p = Prog(List.rev !toplevel, e') in
  (*
  match p with
  | Prog (p1, p2) -> check_type (p1, p2);
  *)
  p

