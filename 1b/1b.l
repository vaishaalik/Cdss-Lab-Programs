%{
int id=0;
%}
%%
[a-zA-Z0-9]+ {id++;}
\n ;
, ;
%%
int main(int argc, char *argv[]){
	FILE *file;
	file=fopen(argv[1],"r");
	yyin=file;
	yylex();
	printf("no. of identifier =%d",id);
	return 0;
}
