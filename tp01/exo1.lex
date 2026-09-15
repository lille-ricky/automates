%{
#include <stdio.h>
%}

%%
[ \t]+ {printf(" ");}
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
