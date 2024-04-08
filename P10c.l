
%{ 
int line_number = 1; 
%} 


line .*\n	 

%% 
{line} { printf("%10d %s", line_number++, yytext); } 




%% 

int yywrap(){} 

int main(int argc, char*argv[]) 
{ 
extern FILE *yyin; // yyin as pointer of File type 

yyin = fopen("P10c.txt","r"); 

yylex();  

return 0; 
} 
