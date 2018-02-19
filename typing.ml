(* type inference/reconstruction *)

open Syntax

exception Unify of Type.t * Type.t
exception Error of Type.t * Type.t * pos
exception RevError of string

let extenv = ref M.empty

(* for pretty printing (and type normalization) *)
let rec deref_typ = function (* 型変数を中身でおきかえる関数 (caml2html: typing_deref) *)
  | Type.Fun(t1s, t2) -> Type.Fun(List.map deref_typ t1s, deref_typ t2)
  | Type.Tuple(ts) -> Type.Tuple(List.map deref_typ ts)
  | Type.Array(t) -> Type.Array(deref_typ t)
  | Type.Var({ contents = None } as r) ->
      Format.eprintf "uninstantiated type variable detected; assuming int@.";
      r := Some(Type.Int);
      Type.Int
  | Type.Var({ contents = Some(t) } as r) ->
      let t' = deref_typ t in
      r := Some(t');
      t'
  | t -> t
let rec deref_id_typ (x, t) = (x, deref_typ t)
let rec deref_term = function
  | Not(e) -> Not(deref_term e)
  | RevBool(e) -> RevBool(deref_term e)
  | RevInt(e) -> RevInt(deref_term e)
  | RevFloat(e) -> RevFloat(deref_term e)
  | Rev(e) -> raise (RevError "hogehogehogehoge")
  | Neg(e) -> Neg(deref_term e)
  | Add(e1, e2) -> Add(deref_term e1, deref_term e2)
  | Sub(e1, e2) -> Sub(deref_term e1, deref_term e2)
  | Mul(e1, e2) -> Mul(deref_term e1, deref_term e2)
  | Div(e1, e2) -> Div(deref_term e1, deref_term e2)
  | Eq(e1, e2) -> Eq(deref_term e1, deref_term e2)
  | LE(e1, e2) -> LE(deref_term e1, deref_term e2)
  | FNeg(e) -> FNeg(deref_term e)
  | FAdd(e1, e2) -> FAdd(deref_term e1, deref_term e2)
  | FSub(e1, e2) -> FSub(deref_term e1, deref_term e2)
  | FMul(e1, e2) -> FMul(deref_term e1, deref_term e2)
  | FDiv(e1, e2) -> FDiv(deref_term e1, deref_term e2)
  | If(e1, e2, e3) -> If(deref_term e1, deref_term e2, deref_term e3)
  | Let(xt, e1, e2) -> Let(deref_id_typ xt, deref_term e1, deref_term e2)
  | LetRec({ name = (xt, pos); args = yts; body = e1 }, e2) ->
      LetRec({ name = (deref_id_typ xt, pos);
               args = List.map deref_id_typ yts;
               body = deref_term e1 },
             deref_term e2)
  | App(e, es) -> App(deref_term e, List.map deref_term es)
  | Tuple(es) -> Tuple(List.map deref_term es)
  | LetTuple(xts, e1, e2) -> LetTuple(List.map deref_id_typ xts, deref_term e1, deref_term e2)
  | Array(e1, e2) -> Array(deref_term e1, deref_term e2)
  | Get(e1, e2) -> Get(deref_term e1, deref_term e2)
  | Put(e1, e2, e3) -> Put(deref_term e1, deref_term e2, deref_term e3)
  | e -> e

let rec occur r1 = function (* occur check (caml2html: typing_occur) *)
  | Type.Fun(t2s, t2) -> List.exists (occur r1) t2s || occur r1 t2
  | Type.Tuple(t2s) -> List.exists (occur r1) t2s
  | Type.Array(t2) -> occur r1 t2
  | Type.Var(r2) when r1 == r2 -> true
  | Type.Var({ contents = None }) -> false
  | Type.Var({ contents = Some(t2) }) -> occur r1 t2
  | _ -> false

let rec unify t1 t2 = (* 型が合うように、型変数への代入をする (caml2html: typing_unify) *)
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
  | Type.Var({ contents = None } as r1), _ -> (* 一方が未定義の型変数の場合 (caml2html: typing_undef) *)
      if occur r1 t2 then raise (Unify(t1, t2));
      r1 := Some(t2)
  | _, Type.Var({ contents = None } as r2) ->
      if occur r2 t1 then raise (Unify(t1, t2));
      r2 := Some(t1)
  | _, _ -> raise (Unify(t1, t2))

let rec unifyRev t1 t2 e = (* 型が合うように、型変数への代入をする (caml2html: typing_unify) *)
  (try unify t1 t2 with
  | Unify _ -> raise (Unify(t1, t2)));
  (t1, e)

let rec g env ee = (* 型推論ルーチン (caml2html: typing_g) *)
    match ee with
    | Unit (_) -> (Type.Unit, ee)
    | Bool(_,_) -> (Type.Bool, ee)
    | Int(_,_) -> (Type.Int, ee)
    | Float(_,_) -> (Type.Float, ee)
    | Not(e) ->
        let (t, newe) = g env e in
        (try unify Type.Bool t with
            Unify _ -> raise (Error (Type.Bool, deref_typ t, show_pos e)));
        (Type.Bool, Not(newe))
    | Rev(e) ->
        let (t, newe) = g env e in
        (try unifyRev Type.Bool t (RevBool(newe)) with
        | Unify _ ->
            (try unifyRev Type.Int t (RevInt(newe)) with
            | Unify _ ->
                (try unifyRev Type.Float t (RevFloat(newe)) with
                    Unify _ -> raise (Error (Type.Float, deref_typ t, show_pos e)))))
    | RevBool(e) ->
        let (t, newe) = g env e in
        (try unify Type.Bool t with
            Unify _ -> raise (Error (Type.Bool, deref_typ t, show_pos e)));
        (Type.Bool, RevBool(newe))
    | RevInt(e) ->
        let (t, newe) = g env e in
        (try unify Type.Int t with
            Unify _ -> raise (Error (Type.Int, deref_typ t, show_pos e)));
        (Type.Int, RevInt(newe))
    | RevFloat(e) ->
        let (t, newe) = g env e in
        (try unify Type.Float t with
            Unify _ -> raise (Error (Type.Float, deref_typ t, show_pos e)));
        (Type.Float, RevFloat(newe))
    | Neg(e) ->
        let (t, newe) = g env e in
        (try unify Type.Int t with
            Unify _ -> raise (Error (Type.Int, deref_typ t, show_pos e)));
        (Type.Int, Neg(newe))
    | Add(e1, e2) -> (* 足し算（と引き算）の型推論 (caml2html: typing_add) *)
        let (t1, newe1) = g env e1 in
        let (t2, newe2) = g env e2 in
        (try unify Type.Int t1 with
            Unify _ -> raise (Error (Type.Int, deref_typ t1, show_pos e1)));
        (try unify Type.Int t2 with
            Unify _ -> raise (Error (Type.Int, deref_typ t2, show_pos e2)));
        (Type.Int, Add(newe1, newe2))
    | Sub(e1, e2) -> (* 足し算（と引き算）の型推論 (caml2html: typing_add) *)
        let (t1, newe1) = g env e1 in
        let (t2, newe2) = g env e2 in
        (try unify Type.Int t1 with
            Unify _ -> raise (Error (Type.Int, deref_typ t1, show_pos e1)));
        (try unify Type.Int t2 with
            Unify _ -> raise (Error (Type.Int, deref_typ t2, show_pos e2)));
        (Type.Int, Sub(newe1, newe2))
    | Mul(e1, e2) -> (* 足し算（と引き算）の型推論 (caml2html: typing_add) *)
        let (t1, newe1) = g env e1 in
        let (t2, newe2) = g env e2 in
        (try unify Type.Int t1 with
            Unify _ -> raise (Error (Type.Int, deref_typ t1, show_pos e1)));
        (try unify Type.Int t2 with
            Unify _ -> raise (Error (Type.Int, deref_typ t2, show_pos e2)));
        (Type.Int, Mul(newe1, newe2))
    | Div(e1, e2) -> (* 足し算（と引き算）の型推論 (caml2html: typing_add) *)
        let (t1, newe1) = g env e1 in
        let (t2, newe2) = g env e2 in
        (try unify Type.Int t1 with
            Unify _ -> raise (Error (Type.Int, deref_typ t1, show_pos e1)));
        (try unify Type.Int t2 with
            Unify _ -> raise (Error (Type.Int, deref_typ t2, show_pos e2)));
        (Type.Int, Div(newe1, newe2))
    | FNeg(e) ->
        let (t, newe) = g env e in
        (try unify Type.Float t with
            Unify _ -> raise (Error (Type.Float, deref_typ t, show_pos e)));
        (Type.Float, FNeg(newe))
    | FAdd(e1, e2) ->
        let (t1, newe1) = g env e1 in
        let (t2, newe2) = g env e2 in
        (try unify Type.Float t1 with
            Unify _ -> raise (Error (Type.Float, deref_typ t1, show_pos e1)));
        (try unify Type.Float t2 with
            Unify _ -> raise (Error (Type.Float, deref_typ t2, show_pos e2)));
        (Type.Float, FAdd(newe1, newe2))
    | FSub(e1, e2) ->
        let (t1, newe1) = g env e1 in
        let (t2, newe2) = g env e2 in
        (try unify Type.Float t1 with
            Unify _ -> raise (Error (Type.Float, deref_typ t1, show_pos e1)));
        (try unify Type.Float t2 with
            Unify _ -> raise (Error (Type.Float, deref_typ t2, show_pos e2)));
        (Type.Float, FSub(newe1, newe2))
    | FMul(e1, e2) ->
        let (t1, newe1) = g env e1 in
        let (t2, newe2) = g env e2 in
        (try unify Type.Float t1 with
            Unify _ -> raise (Error (Type.Float, deref_typ t1, show_pos e1)));
        (try unify Type.Float t2 with
            Unify _ -> raise (Error (Type.Float, deref_typ t2, show_pos e2)));
        (Type.Float, FMul(newe1, newe2))
    | FDiv(e1, e2) ->
        let (t1, newe1) = g env e1 in
        let (t2, newe2) = g env e2 in
        (try unify Type.Float t1 with
            Unify _ -> raise (Error (Type.Float, deref_typ t1, show_pos e1)));
        (try unify Type.Float t2 with
            Unify _ -> raise (Error (Type.Float, deref_typ t2, show_pos e2)));
        (Type.Float, FDiv(newe1, newe2))
    | Eq(e1, e2) ->
        let (t1, newe1) = g env e1 in
        let (t2, newe2) = g env e2 in
        (try unify t1 t2 with
            Unify _ -> raise (Error (deref_typ t1, deref_typ t2, show_pos e2)));
        (Type.Bool, Eq(newe1, newe2))
    | LE(e1, e2) ->
        let (t1, newe1) = g env e1 in
        let (t2, newe2) = g env e2 in
        (try unify t1 t2 with
            Unify _ -> raise (Error (deref_typ t1, deref_typ t2, show_pos e2)));
        (Type.Bool, LE(newe1, newe2))
    | If(e1, e2, e3) ->
        let (t1, newe1) = g env e1 in
        (try unify Type.Bool t1 with
            Unify _ -> raise (Error (Type.Bool, deref_typ t1, show_pos e1)));
        let (t2, newe2) = g env e2 in
        let (t3, newe3) = g env e3 in
        (try unify t2 t3 with
            Unify _ -> raise (Error (deref_typ t2, deref_typ t3, show_pos e3)));
        (t2, If(newe1, newe2, newe3))
    | Let((x, t), e1, e2) -> (* letの型推論 (caml2html: typing_let) *)
        let (t1, newe1) = g env e1 in
        (try unify t t1 with
            Unify _ -> raise (Error (t, t1, show_pos e1)));
        let (t2, newe2) = g (M.add x t env) e2 in
        (t2, Let((x, t), newe1, newe2))
    | Var(x,_) when M.mem x env -> (M.find x env, ee) (* 変数の型推論 (caml2html: typing_var) *)
    | Var(x,_) when M.mem x !extenv -> (M.find x !extenv, ee)
    | Var(x,_) -> (* 外部変数の型推論 (caml2html: typing_extvar) *)
        Format.eprintf "free variable %s assumed as external@." x;
        let t = Type.gentyp () in
        extenv := M.add x t !extenv;
        (t, ee)
    | LetRec({ name = ((x, t), pos); args = yts; body = e1 }, e2) -> (* let recの型推論 (caml2html: typing_letrec) *)
        let newenv = M.add x t env in
        let argss = List.map snd yts in
        let bodys = fst (g (M.add_list yts newenv) e1) in
        (try unify t (Type.Fun(argss, bodys)) with
            Unify _ -> raise (Error (t, Type.Fun(argss, bodys), pos)));
        let (t2, newe2) = g newenv e2 in
        (t2, LetRec({ name = ((x, t),  pos); args = yts; body = e1 }, newe2))
    | App(e, es) -> (* 関数適用の型推論 (caml2html: typing_app) *)
        let t = Type.gentyp () in
        let (t1, newe1) = g env e in
        let fstg expr = fst (g env expr) in
        let t2 = (Type.Fun(List.map fstg es, t)) in
        (try unify t1 t2 with
            Unify _ -> raise (Error (t2, t1, show_pos e)));
        (t, App(newe1, es))
    | Tuple(es) -> 
        let fstg expr = fst (g env expr) in
        let sndg expr = snd (g env expr) in
        (Type.Tuple(List.map fstg es), Tuple(List.map sndg es))
    | LetTuple(xts, e1, e2) ->
        let tx = Type.Tuple(List.map snd xts) in
        let (t1, newe1) = g env e1 in
        (try unify tx t1 with
            Unify _ -> raise (Error (tx, t1, show_pos e1)));
        let (t2, newe2) = g (M.add_list xts env) e2 in
        (t2, LetTuple(xts, newe1, newe2))
    | Array(e1, e2) -> (* must be a primitive for "polymorphic" typing *)
        let (t1, newe1) = g env e1 in
        (try unify t1 Type.Int with
            Unify _ -> raise (Error (Type.Int, t1, show_pos e1)));
        (Type.Array(fst (g env e2)), Array(newe1, e2))
    | Get(e1, e2) ->
        let t = Type.gentyp () in
        let (t1, newe1) = g env e1 in
        let (t2, newe2) = g env e2 in
        (try unify (Type.Array(t)) t1 with
            Unify _ -> raise (Error (Type.Array(t), t1, show_pos e1)));
        (try unify Type.Int t2 with
            Unify _ -> raise (Error (Type.Int, t2, show_pos e2)));
        (t, Get(newe1, newe2))
    | Put(e1, e2, e3) ->
        let (t1, newe1) = g env e1 in
        let (t2, newe2) = g env e2 in
        let (t3, newe3) = g env e3 in
        (try unify (Type.Array(t3)) t1 with
            Unify _ -> raise (Error (Type.Array(t3), t1, show_pos e1)));
        (try unify Type.Int t2 with
            Unify _ -> raise (Error (Type.Int, t2, show_pos e2)));
        (Type.Unit, Put(newe1, newe2, newe3))

let rec print_typing e =
    match e with
    | Unit (_) -> print_string "UNIT"
    | Bool(b,_) -> (print_string "BOOL ";
                    print_string (string_of_bool b))
    | Int(i,_) -> (print_string "INT ";
                   print_int i)
    | Float(f,_) -> (print_string "FLOAT ";
                     print_string (string_of_float f))
    | Not(e) -> (print_string "NOT (";
                 print_typing e;
                 print_string ")")
    | Rev(e) -> (print_string "REV (";
                 print_typing e;
                 print_string ")")
    | RevBool(e) -> (print_string "REVBOOL (";
                     print_typing e;
                     print_string ")")
    | RevInt(e) -> (print_string "REVINT (";
                    print_typing e;
                    print_string ")")
    | RevFloat(e) -> (print_string "REVFLOAT (";
                      print_typing e;
                      print_string ")")
    | Neg(e) -> (print_string "NEG (";
                 print_typing e;
                 print_string ")")
    | Add(e1, e2) -> (print_string "ADD (";
                      print_typing e1;
                      print_string ", ";
                      print_typing e2;
                      print_string ")")
    | Sub(e1, e2) -> (print_string "SUB (";
                      print_typing e1;
                      print_string ", ";
                      print_typing e2;
                      print_string ")")
    | Mul(e1, e2) -> (print_string "MUL (";
                      print_typing e1;
                      print_string ", ";
                      print_typing e2;
                      print_string ")")
    | Div(e1, e2) -> (print_string "DIV (";
                      print_typing e1;
                      print_string ", ";
                      print_typing e2;
                      print_string ")")
    | FNeg(e) -> (print_string "FNEG (";
                  print_typing e;
                  print_string ")")
    | FAdd(e1, e2) -> (print_string "FADD (";
                       print_typing e1;
                       print_string ", ";
                       print_typing e2;
                       print_string ")")
    | FSub(e1, e2) -> (print_string "FSUB (";
                       print_typing e1;
                       print_string ", ";
                       print_typing e2;
                       print_string ")")
    | FMul(e1, e2) -> (print_string "FMUL (";
                       print_typing e1;
                       print_string ", ";
                       print_typing e2;
                       print_string ")")
    | FDiv(e1, e2) -> (print_string "FDIV (";
                       print_typing e1;
                       print_string ", ";
                       print_typing e2;
                       print_string ")")
    | Eq(e1, e2) -> (print_string "EQ (";
                     print_typing e1;
                     print_string ", ";
                     print_typing e2;
                     print_string ")")
    | LE(e1, e2) -> (print_string "LE (";
                     print_typing e1;
                     print_string ", ";
                     print_typing e2;
                     print_string ")")
    | If(e1, e2, e3) -> (print_string "IF (";
                         print_typing e1;
                         print_string ", ";
                         print_typing e2;
                         print_string ", ";
                         print_typing e3;
                         print_string ")")
    | Let((x, t), e1, e2) -> (print_string "LET (";
                              print_string x;
                              print_string ", ";
                              print_typing e1;
                              print_string ", ";
                              print_typing e2;
                              print_string ")")
    | Var(x,_) -> (print_string "VAR (";
                   print_string x;
                   print_string ")")
    | LetRec(f, e) -> (print_string "LETREC (";
                       print_fundef f;
                       print_string ", ";
                       print_typing e;
                       print_string ")")
    | App(e, es) -> (print_string "APP (";
                     print_typing e;
                     print_string ", ";
                     print_typing_list es;
                     print_string ")")
    | Tuple(es) -> (print_string "TUPLE (";
                    print_typing_list es;
                    print_string ")")
    | LetTuple(xts, e1, e2) -> (print_string "LETTUPLE (";
                                print_id_list xts;
                                print_string ", ";
                                print_typing e1;
                                print_string ", ";
                                print_typing e2;
                                print_string ")")
    | Array(e1, e2) -> (print_string "ARRAY (";
                        print_typing e1;
                        print_string ", ";
                        print_typing e2;
                        print_string ")")
    | Get(e1, e2) -> (print_string "GET (";
                      print_typing e1;
                      print_string ", ";
                      print_typing e2;
                      print_string ")")
    | Put(e1, e2, e3) -> (print_string "PUT (";
                          print_typing e1;
                          print_string ", ";
                          print_typing e2;
                          print_string ", ";
                          print_typing e3;
                          print_string ")")
and print_fundef f =
    print_string (fst (fst f.name));
    print_id_list f.args;
    print_typing f.body
 
and print_typing_list ts =
    match ts with
    | [] -> print_string " "
    | t :: ts -> (print_typing t; print_string ", "; print_typing_list ts)

and print_id_list xs =
    match xs with
    | [] -> print_string " "
    | (id, _) :: xs -> (print_string id; print_string ", "; print_id_list xs)

let f e =
  extenv := M.empty;
(*
  (match deref_typ (g M.empty e) with
  | Type.Unit -> ()
  | _ -> Format.eprintf "warning: final result does not have type unit@.");
*)
  let (t, newe) = g M.empty e in
  (*
  print_typing newe;
  print_newline ();
  Type.print_type t;
  print_newline ();
  *)
  (*
  (try unify Type.Unit t
  with Unify _ -> failwith "top level does not have type unit");
  *)
  extenv := M.map deref_typ !extenv;
  deref_term newe
