%{
#include <stdio.h>
%}


digit [0-9]
letter [A-Za-z]
whitespace [ \t]
newline [\n]

%%

{digit}+   
{letter}+   
{whitespace} 
{newline}   { printf("Newline\n"); }  
.           

%%

int main(int argc, char* argv[]) {
    extern FILE* yyin;
    yyin = fopen("input.txt", "r"); 
    int charCount = 0;
    int wordCount = 0;
    int lineCount = 0;
    int c;

    while ((c = yylex()) != 0) {
        if (c == '\n') {
            lineCount++;
        } else if (c == ' ' || c == '\t') {
            
        } else {
            charCount++;
        }
    }

    printf("Number of characters: %d\n", charCount);
    printf("Number of words: %d\n", wordCount);
    printf("Number of lines: %d\n", lineCount);

    return 0;
}
