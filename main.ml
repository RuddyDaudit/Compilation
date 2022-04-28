(*fichier main.ml *)

let _ =
try
	let file  =  open_in Sys.argv.(1) in
	let lexbuf = Lexing.from_channel file in
		Parseur.main Lexeur.token lexbuf
with
| Lexeur.Eof -> exit 0
| Lexeur.TokenInconu -> 
	Printf.printf ("lex error \n")
| Parsing.Parse_error ->
	Printf.printf ("Ceci n'est pas une expression arithmetique \n")
