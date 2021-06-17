%{
#include <stdio.h>
int w_count = 0, l_count = 0,b_count=0, c_count = 0;
%}
%%
[ ]+ {b_count++;}
[^ \t\n]+ {c_count++,w_count+=yyleng;}
\n {l_count++;}
. ;
%%

int main(int argc, char *argv[]){
	FILE *file;
	file = fopen(argv[1],"r");
	yyin = file;
	yylex();
	printf("No. of words = %d",w_count);
	printf("No. of characters = %d",c_count);
	printf("no. of lines = %d",l_count);
	printf("no. of blank = %d",b_count);
	return 0;
}

