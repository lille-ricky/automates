%{
#include <stdio.h>
%}

%x COMMENT

%%
"{"             { BEGIN(COMMENT); printf("%s", yytext); }
<COMMENT>"}"    { printf("%s", yytext); BEGIN(INITIAL); }
<COMMENT>.      { printf("%s", yytext); }
<COMMENT>\n     { printf("\n"); }
.|\n            ;   /* ignore tout le reste */
%%

int main() { yylex(); return 0; }
int yywrap() { return 1; }