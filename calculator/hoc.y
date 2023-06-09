%{
#include <stdio.h>
int yylex(void);

void yyerror(char *);
%}
%token INTERGER
%%
program:
       program expr '\n'  {printf("%d\n",$2);}
       |
       ;
expr:
    INTERGER	{$$=$1;}
    |expr '+' expr	{$$=$1+$3;}
    |expr '-' expr	{$$=$1-$3;}
    ;
%%
void yyerror(char *s){
fprintf(stderr,"%s\n",s);
return 0;
}
int main()
{
yyparse();
return 0;
}
