#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h> 

typedef struct symbole
    {
        char *nom;
        bool init;
        int profondeur;
        struct symbole *suiv;
        struct symbole *prec;
    } symbole ;

typedef struct symbole_tab{
    symbole * first;
    symbole * last;
} symbole_tab;

typedef struct instruction{
    char * ins;
    struct instruction * suiv;
}instruction;

typedef struct instruction_list{
    instruction * first;
    instruction * last;
}instruction_list;


symbole Create_Symbole (char *nom, bool init);

void Init();

void Insert (symbole s);

void Delete_Last();

void Delete_Prof();

void Update_Init (symbole s);

symbole * Search_Symbole (char *nom);

int Index_Symbole (char *nom);

void Ts_new_tmp ();

void Ts_new (char *nom, bool init);

void Increase_Prof();

void Current_Prof();

void Decrease_Prof();

int ts_last();

void Copy_Value(char *nom);

void Increase_Instru();

int GetNB_Instruc();


