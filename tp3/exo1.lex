%{
	#include <stdio.h>
	int nbLignes = 1;
%}

%%

^[ \t]*\n {ECHO;}
^.*\n	{printf("%d: %s", nbLignes++, yytext); }
.|\n	{ECHO; }
%%

int main()
{
	yylex();
	return 0;
}

int yywrap()
{
	return 1;
}



