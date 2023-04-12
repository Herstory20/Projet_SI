%option noyywrap
%option noinput
%option nounput

%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include "ts.h"
#include "lex.tab.h"
%}

%x C_COMMENT

%%

"if"                     { return tIF ;} 
"else"                   { return tELSE ; }
"while"                  { return tWHILE ; }
"print"                  { return tPRINT ; }
"return"                 { return tRETURN ; }
"int"                    { return tINT ; }
"void"                   { return tVOID ; }

[0-9]+                  { yylval.s = strdup(yytext); return tNB; }
[a-zA-Z_][a-zA-Z0-9_]*  { yylval.s = strdup(yytext); return tID; }

"//"[^\n]*
"/*"            { BEGIN(C_COMMENT); }
<C_COMMENT>"*/" { BEGIN(INITIAL); }
<C_COMMENT>\n   { }
<C_COMMENT>.    { }

"+"                     { return tADD ; }
"-"                     { return tSUB ; }
"*"                     { return tMUL ; }
"/"                     { return tDIV ; }

"<"                     { return tLT ; }
">"                     { return tGT ; }
"!="                    { return tNE ; }
"=="                    { return tEQ ; }
">="                    { return tGE ; }
"<="                    { return tLE ; }
"="                     { return tASSIGN ; }
"&&"                    { return tAND ; }
"||"                    { return tOR ; }
"!"                     { return tNOT ; }
"{"                     { return tLBRACE ; }
"}"                     { return tRBRACE ; }
"("                     { return tLPAR ; }
")"                     { return tRPAR ; }
";"                     { return tSEMI ; }
","                     { return tCOMMA ; }
[ \t\n]+                 // eat up Whitespaces
.                       { return tERROR ; }

