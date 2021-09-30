
%{
 #include<stdio.h>
%}

%%
[\n] {printf("\n\nEnter mobile Number: ");}

((0[1-9])|([1-2][0-9])|(3[0-1]))\/((0[1-9])|(1[0-2]))\/(19[0-9][0-9]|2[0-9][0-9][0-9]) {printf("Date valid.");}

.* {printf("Date Invalid.");}
%%

int main()
{
 printf("\nEnter Date: ");
 yylex();
 return 0;
}