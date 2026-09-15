%{
#include <stdio.h>
int nbMots = 0;
int nbNombres = 0;
%}


MOT [[:alpha:]]+
NOMBRE [0-9]+([ \t][0-9]{3})*(,[0-9]+)?
%%

{NOMBRE} {++nbNombres;}
{MOT} {++nbMots;}

[ \t\n]+ {}
. {}
%%

int main()
{
	yylex();
	printf("Nombre de mots : %d\n", nbMots);
	printf("Nombre de nombres : %d\n", nbNombres);

	return 0;
}

int yywrap()
{
	return 1;
}

