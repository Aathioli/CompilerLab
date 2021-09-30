%{
#include <stdio.h>
int tokenCount=0;
%}
/* rules */
%%
[0123456789]+     { printf("%d NUMBER \"%s\"\n", ++tokenCount, yytext); }
[a-zA-Z]+         { printf("%d WORD \"%s\"\n", ++tokenCount, yytext); }
[a-zA-Z][a-zA-Z0-9]*  { printf("%d OTHER \"%s\"\n", ++tokenCount,yytext); }
%%
/* code (main) */
int main()
{
        yylex();
        return 0;
}
