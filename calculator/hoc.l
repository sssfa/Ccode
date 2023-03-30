%{
#include <stdlib.h>
void yyerror(char *);
#include "hoc.tab.h"
%}
%%
[0-9]+ {
	yylval=atoi(yytext);
	return INTERGER;
}
[-+\n] return *yytext;
[ \t]   ;
.  	yyerror("invalid charactor");
%%
int yywrap()
{return 1;}

