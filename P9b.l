%{
#include <stdio.h>
%}


vowel [aeiouAEIOU]
consonant [a-zA-Z&&[^aeiouAEIOU]]

%%

{vowel}     { printf("Vowel: %s\n", yytext); }  
{consonant} { printf("Consonant: %s\n", yytext); }  
.           

%%

int main() {
    yylex();  
    return 0;
}
