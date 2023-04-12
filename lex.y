%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include "ts.h"
%}

%code provides {
  int yylex (void);
  void yyerror (const char *);
}

%union {char *s;}

%token <s> tID tNB
%token tIF tELSE tWHILE tPRINT tRETURN tINT tVOID
%left tAND  tOR
%left tADD tSUB
%left tMUL tDIV
%token tLT tGT tNE tEQ tGE tLE tASSIGN tAND tOR
%token tNOT tLBRACE tRBRACE tLPAR tRPAR tSEMI tCOMMA tERROR 

%%

Funs :
    Fun 
  | Funs Fun 
  ;

Fun :
    type exp tLPAR Params tRPAR Body
  ;

Params :
    param 
  | Params tCOMMA param 
  ;

param :
    tINT tID { Ts_new($2,false); } 
  | tVOID  
  ;

Body :
    tLBRACE {Increase_Prof(); }INS tRBRACE {Delete_Prof(); Decrease_Prof();}
  ;

type :
    tINT
  | tVOID 
  ;

In :
    If 
  | While
  | Print
  | Assign 
  | Declaration 
  | Return
  ;

If : 
    tIF tLPAR Inverse_Cond tRPAR Body  
  | tIF tLPAR Inverse_Cond tRPAR Body Else
  ;
Else :
    tELSE Body 
  ;
  
While :
    tWHILE tLPAR Inverse_Cond tRPAR Body 
  ;

Print :
    tPRINT tLPAR tID tRPAR tSEMI  
  ;

Assign :
    tID tASSIGN Expression tSEMI 
  | tID tASSIGN tID tLPAR ParamsFunc tRPAR tSEMI  
  | tID tASSIGN tID tLPAR tRPAR tSEMI 
  ;

Assign_Declaration:
    tID tASSIGN Expression tSEMI { Ts_new($1,true); }
  | tID tASSIGN tID tLPAR ParamsFunc tRPAR tSEMI  { Ts_new($1,true); }
  | tID tASSIGN tID tLPAR tRPAR tSEMI { Ts_new($1,true); }
  ;

ParamsFunc :
    Expression
  | ParamsFunc tCOMMA Expression
  ;

exp :
    tID 
  | tNB 
  ;

Declaration :
    tINT tID tSEMI { Ts_new($2,false); } 
  | tINT tID tCOMMA { Ts_new($2,false); } Declaration 
  | tINT tID tCOMMA {  Ts_new($2,true); } Assign_Declaration
  | tINT Assign_Declaration 
  ;

Return :
    tRETURN Expression tSEMI 
  ;

compare :
    tLT
  | tGT
  | tGE
  | tNE
  | tEQ
  | tLE
  ;

Inverse_Cond :
    Condition
  | tNOT Condition
  ;

Condition:
    Expression compare Expression 
  | Condition tAND Condition
  | Condition tOR Condition
  | tLPAR Condition tRPAR
  ;

Expression :
    exp
  | Expression tADD Expression
  | Expression tSUB Expression
  | Expression tMUL Expression
  | Expression tDIV Expression
  | tLPAR Expression tRPAR
  
  ;

INS :
    %empty 
  | INS In 
  ;

%%

void yyerror(const char *msg) {
  fprintf(stderr, "error: %s\n", msg);
  exit(1);
}

int main(void) {
  Init();
  yyparse();
}