%{
 #include<stdio.h>
%}

%%
[\n] {printf("\n\nEnter mobile Number: ");}

[9][1][6-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9] {printf("Mobile number Valid.");}

.* {printf("Mobile number Invalid.");}
%%

int main()
{
 printf("\nEnter mobile Number: ");
 yylex();
 return 0;
}