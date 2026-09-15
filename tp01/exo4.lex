%{
	#include <stdio.h>
%}

%%
[ \t\n]+ {}
begin	{
	printf("mot-clef begin\n");
	}
end	{
	printf("mot-clef end\n");
	}
[0-9]+	{
	printf("Nombre %s\n", yytext);
	}
[A-Za-z][A-Za-z0-9]*	{
	printf("Identificateur %s\n", yytext);
	}
\*\*	{
	printf("Operateur %s\n", yytext);
	}
[+*-]	{
	printf("Operateur %s\n", yytext);
	}
.	{
	printf("erreur : %s\n", yytext);
	}
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


