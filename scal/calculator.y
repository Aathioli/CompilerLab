// declarations
%{
    #include <stdio.h>
    int yylex();
    int yyerror();
%}

%}
%token NUMBER
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'
%%
ArithmeticExpression: E{ printf("\nResult=%d\n",$$); return 0; };
E:E'+'E {$$=$1+$3;}  |E'-'E {$$=$1-$3;}  |E'*'E {$$=$1*$3;} 
 |E'/'E {$$=$1/$3;}  |E'%'E {$$=$1%$3;}  |'('E')' {$$=$2;} | NUMBER {$$=$1;} ;
%%
// programs
#include "lex.yy.c"

int main() {
  yyparse();
  return 1;
}