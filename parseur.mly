%token NOMBRE PLUS MOINS FOIS GPAREN DPAREN EOL

%left PLUS MOINS
%left FOIS
%nonassoc UMOINS


%type <int> main expression
%start main
%%
main:
	expression EOL{}
;
expression:
	expression PLUS expression{}
	| expression MOINS expression{}
	| expression FOIS expression{}
	| GPAREN expression DPAREN{}
	| MOINS expression %prec UMOINS{}
	| NOMBRE{}
;
