(*fichier lexeur.mll *)
{
open Parseur
exception Eof
exception TokenInconu
}
rule token = parse
[' ' '\t'] { token lexbuf }
| ['\n'] { EOL }
| ['0'-'9']+ { NOMBRE}
| '+' { PLUS }
| '-' { MOINS }
| '*' { FOIS }
| '(' { GPAREN }
| ')' { DPAREN }
| eof { raise Eof }
| ['\n'] { raise Eof }
| ';' {PT_VIRG}
| _ { raise TokenInconu }

