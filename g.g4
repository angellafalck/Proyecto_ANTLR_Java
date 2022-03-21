//Nombre de la gramática
grammar g;

//Reglas
prog: expr EOF;
expr: expr('*' | '/') expr
    | expr('+' | '-') expr
    | INT
    | '(' expr ')'
    ;
//Componentes lexicos
INT     : [0-9]+ ;
