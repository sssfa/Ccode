%{
	int charct;
	int linect;
	int wordct;
%}
%%
\n linect++;
[^ \t\n]+ {wordct++;charct+=yyleng;}
. charct++;
%%
int yywrap()
{
	return 1;
}
int main(int argc,char *argv[])
{
	yyin=fopen(argv[1],"r");
	yylex();
	fclose(yyin);
	printf("%d %d %d   %s\n",linect,wordct,linect+charct,argv[1]);
	return 0;
}
