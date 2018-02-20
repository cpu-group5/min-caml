let limit = ref 1000

let rec iter n e = (* 最適化処理をくりかえす (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
  let e' = Elim.f (ConstFold.f (Inline.f (Assoc.f (Beta.f e)))) in
  if e = e' then e else
  iter (n - 1) e'

let rec global e global_e =
    match global_e with
    | Syntax.Unit _ -> e
    | Syntax.Let(xt, e1, e2)  -> Syntax.Let(xt, e1, (global e e2))
    | Syntax.LetRec(f, e1) -> Syntax.LetRec(f, (global e e1))
    | Syntax.LetTuple(xts, e1, e2) -> Syntax.LetTuple(xts, e1, (global e e2))
    | _ -> failwith "toplevel must be unit in global.ml"

let lexbuf outchan l global_l = (* バッファをコンパイルしてチャンネルへ出力する (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing.extenv := M.empty;
  (*
  let expr = global (Parser.exp Lexer.token l) (Parser.exp Lexer.token global_l) in
  Syntax.print_expr expr;
  print_newline ();
  *)
  Emit.f outchan
    (RegAlloc.f
    (Simm.f
          (Virtual.f
             (Closure.f
                (iter !limit
                   (Alpha.f
                      (KNormal.f
                         (Typing.f
                            (global (Parser.exp Lexer.token l) (Parser.exp Lexer.token global_l))))))))))

let string s globalchan = lexbuf stdout (Lexing.from_string s) (Lexing.from_channel globalchan)(* 文字列をコンパイルして標準出力に表示する (caml2html: main_string) *)

let file f = (* ファイルをコンパイルしてファイルに出力する (caml2html: main_file) *)
  let catin = open_in (f ^ ".ml") in
  let catout = open_out (f ^ ".mlo") in
  let libin = open_in ("./mylib.ml") in
  (let rec lib_sub () =
      output_char catout (input_char libin);
      lib_sub () in
  (try lib_sub () with End_of_file -> ()));
  (let rec cat_sub () =
      output_char catout (input_char catin);
      cat_sub () in
  (try cat_sub () with End_of_file -> close_in catin; close_out catout));

  let inchan = open_in (f ^ ".mlo") in
  let outchan = open_out (f ^ ".s") in
  let globalchan = open_in ("./globals.ml") in
  try
    lexbuf outchan (Lexing.from_channel inchan) (Lexing.from_channel globalchan);
    close_in inchan;
    close_out outchan;
  with e -> (close_in inchan; close_out outchan; raise e)

let () = (* ここからコンパイラの実行が開始される (caml2html: main_entry) *)
  let files = ref [] in
  Arg.parse
    [("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
     ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated")]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n] ...filenames without \".ml\"..." Sys.argv.(0));
  List.iter
    (fun f -> ignore (file f))
    !files
