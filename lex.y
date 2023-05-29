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

Prog : Funs
  ;

Funs : 
    Fun 
  | Funs Fun 
  ;

Fun :
    tINT tID tLPAR Arguments tRPAR Fun_Body 
  | tVOID tID tLPAR Arguments tRPAR Body 
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
    tINT tID { Ts_new($2,false); }
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
    tIF tLPAR Inverse_Cond tRPAR X Body {Modif_ins_list(pop());}
  | tIF tLPAR Inverse_Cond tRPAR X Body Y Else {Modif_ins_list(pop());}
  ;

X : %empty  { Insert_instruction("JMPF",ts_last(),-1,-1); push(GetNB_Instruc()); } ;

Y : %empty {Insert_instruction("JMP",-1,-1,-1);Modif_ins_list(pop()); push(GetNB_Instruc());}

Else :
    tELSE Body 
  ;
  
While :
    tWHILE tLPAR Inverse_Cond tRPAR U Body {Insert_instruction("JMP",pop(),-1,-1);
    Modif_ins_list(pop());}
  ;

U : %empty  { Insert_instruction("JMPF",ts_last(),-1,-1); push(GetNB_Instruc());push(GetNB_Instruc()); } ;

Print :
    tPRINT tLPAR exp tRPAR tSEMI  { Insert_instruction("PRI",ts_last(),-1,-1); Delete_Last();}
  ;

Assign :
    tID tASSIGN Expression tSEMI 
  ;


ParamsFunc :
    Expression
  | ParamsFunc tCOMMA Expression
  ;

exp :
    tID   {Ts_new_tmp(); Copy_Value($1); 
          Insert_instruction("COP",ts_last(),Index_Symbole($1),-1);
          } 
  | tID tLPAR ParamsFunc tRPAR
  | tID tLPAR tRPAR 
  | tNB   { Ts_new_tmp(); 
          Insert_instruction("AFC",ts_last(),$1,-1);
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


Inverse_Cond :
    Condition
  | tNOT Condition { Insert_instruction("NOT",ts_last(),ts_last(),-1); }
  ;

Condition:
    tLPAR Condition tRPAR 
  | Expression tLT Expression { Insert_instruction("INF",ts_last()-1,ts_last()-1,ts_last()) ; Delete_Last();}
  | Expression tGT Expression { Insert_instruction("SUP",ts_last()-1,ts_last()-1,ts_last()) ; Delete_Last();}
  | Expression tGE Expression { Insert_instruction("SUPE",ts_last()-1,ts_last()-1,ts_last()) ; Delete_Last();}
  | Expression tNE Expression { Insert_instruction("NEQ",ts_last()-1,ts_last()-1,ts_last()) ; Delete_Last();}
  | Expression tEQ Expression { Insert_instruction("EQU",ts_last()-1,ts_last()-1,ts_last()) ; Delete_Last();}
  | Expression tLE Expression { Insert_instruction("INFE",ts_last()-1,ts_last()-1,ts_last()) ; Delete_Last();}
  | Condition tAND Condition  { Insert_instruction("AND",ts_last()-1,ts_last()-1,ts_last()) ; Delete_Last();}
  | Condition tOR Condition   { Insert_instruction("OR",ts_last()-1,ts_last()-1,ts_last()) ; Delete_Last();}
  ;

Expression :
    exp
  | Expression tADD Expression { Insert_instruction("ADD",ts_last()-1,ts_last()-1,ts_last()) ; Delete_Last();}
  | Expression tSUB Expression { Insert_instruction("SUB",ts_last()-1,ts_last()-1,ts_last()) ; Delete_Last();}
  | Expression tMUL Expression { Insert_instruction("MUL",ts_last()-1,ts_last()-1,ts_last()) ; Delete_Last();}
  | Expression tDIV Expression { Insert_instruction("DIV",ts_last()-1,ts_last()-1,ts_last()) ; Delete_Last();}
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
  print_list();
}