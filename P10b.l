%{

#include<stdio.h>

%}
%%

"<"[^>]*> {printf("%s ",yytext );}
. ;
%%

int yywrap() {
return 1;
}

int main() {
extern FILE *yyin; yyin=fopen("P10b.txt","r"); 
yylex();
return 0;
}
