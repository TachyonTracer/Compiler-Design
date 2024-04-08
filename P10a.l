%{
#include <stdio.h>
%}


digit [0-9]
number {digit}+(\.{digit}+)?   

%%

{number}    { printf("%s\n", yytext); }  

%%

int main(int argc, char* argv[]) {
    extern FILE* yyin;
    yyin = fopen("P10a.txt", "r");  
    yylex();  
    return 0;
}
