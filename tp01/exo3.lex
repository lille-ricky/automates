%{
	#include <stdio.h>
	int nbVoyelles = 0;
	int nbConsonnes = 0;
	int nbPonctuations = 0;
%}

%%
[aeiouyAEIOUY]	{++nbVoyelles;}
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z] {++nbConsonnes;}
[.,;:?!()\[\]{}'"-] {++nbPonctuations;}
[ \t\n]+ {}
. {}
%%
int main()
{
	yylex();
	printf("nombre de voyelles : %d\n", nbVoyelles);
	printf("nombre de consonnes : %d\n", nbConsonnes);
	printf("nombre de ponctuations : %d\n", nbPonctuations);
	return 0;
}

int yywrap()
{
	return 1;
}
