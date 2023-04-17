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

%union {char *s; int in; int i;}

%token <s> tID 
%token <in> tNB
%token <i> tIF 
%token tELSE tWHILE tPRINT tRETURN tINT tVOID
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
    tINT tID tLPAR Arguments tRPAR Fun_Body
    tVOID tID tLPAR Arguments tRPAR Body
  ;

Fun_Body :
    tLBRACE INS Return tRBRACE 
  ;

Arguments :
    tVOID
  | Params
  ;

Params :
    param 
  | Params tCOMMA param 
  ;

param :
    tINT tID { printf("--------------  %s\n", $2);Ts_new($2,false); }
  ;

Body :
    tLBRACE {Increase_Prof(); }INS tRBRACE {
      Delete_Prof(); 
      Decrease_Prof(); 
      Current_Prof();}
  ;

In :
    If 
  | While
  | Print
  | Assign 
  | tINT Declaration 
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
  ;


ParamsFunc :
    Expression
  | ParamsFunc tCOMMA Expression
  ;

exp :
    tID   {Increase_Instru(); Ts_new_tmp($1,false); Copy_Value($1); 
          printf("COP %d %d\n", ts_last(), Index_Symbole($1));
          } 
  | tID tLPAR ParamsFunc tRPAR
  | tID tLPAR tRPAR 
  | tNB   {Increase_Instru(); Ts_new_tmp($1,false); 
          printf("AFC %d %d\n", ts_last(), $1);
          }
  ;

Declaration :
    tID tSEMI { Ts_new($1,false); } 
  | tID tCOMMA { Ts_new($1,false); } Declaration 
  | tID tASSIGN Expression tSEMI { Ts_new($1,true); }
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
  | Expression tADD Expression { Insert_instruction("ADD",ts_last()-1,ts_last()-1,ts_last());
                                  Increase_Instru(); printf("ADD %d %d %d\n", ts_last() - 1, ts_last() - 1, ts_last()); Delete_Last();
                                  print_list();}
  | Expression tSUB Expression { Insert_instruction("SUB",ts_last()-1,ts_last()-1,ts_last()) ;Increase_Instru(); printf("SUB %d %d %d\n", ts_last() - 1, ts_last() - 1, ts_last()); Delete_Last();}
  | Expression tMUL Expression { Insert_instruction("MUL",ts_last()-1,ts_last()-1,ts_last()) ;Increase_Instru(); printf("MUL %d %d %d\n", ts_last() - 1, ts_last() - 1, ts_last()); Delete_Last();}
  | Expression tDIV Expression { Insert_instruction("DIV",ts_last()-1,ts_last()-1,ts_last()) ;Increase_Instru(); printf("DIV %d %d %d\n", ts_last() - 1, ts_last() - 1, ts_last()); Delete_Last();}
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