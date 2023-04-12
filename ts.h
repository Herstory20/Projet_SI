#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h> 

typedef struct symbole
    {
        char nom[8];
        bool init;
        int profondeur;
        struct symbole *suiv;
        struct symbole *prec;
    } symbole ;

typedef struct symbole_tab{
    symbole * first;
    symbole * last;
} symbole_tab;

symbole Create_Symbole (char nom[8], bool init);

void Init();

void Insert (symbole s);

void Delete_Last();

void Delete_Prof();

void Update_Init (symbole s);

symbole * Search_Symbole (symbole s);

void Ts_new_tmp ();

void Ts_new (char nom[8], bool init);

void Increase_Prof();

void Decrease_Prof();



