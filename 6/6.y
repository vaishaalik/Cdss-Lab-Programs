%{
#include<stdio.h>
%}
%token A B

%%
str: s '\n' {return 0;}
s: A s B;
| ;
%%
int main(){
	printf("Type string : ");
	if(!yyparse())
		printf("Valid string");
	return 0;
}
int yyerror(){
	printf("invalid string");
	exit(0);
}
