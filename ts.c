#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include "ts.h"
#include <stdbool.h> 

int profondeur_global = 0;
int Current_lenght = 0;
symbole_tab *symbol_table;


symbole Create_Symbole (char *nom, bool init) {
    symbole s;
    strcpy(s.nom,nom);
    s.init = init;
    s.profondeur = profondeur_global;
    s.suiv =NULL;
    s.prec =NULL;
    return s;
}

void Init(){
   symbol_table = malloc(sizeof(symbole_tab));
   symbol_table->first = NULL;
   symbol_table->last = NULL;
   printf("Initialisé\n");
}

void Insert (symbole s) {
    symbole *sp = malloc(sizeof(*sp)) ;
    strcpy(sp->nom, s.nom);
    sp->init = s.init;
    sp->profondeur = s.profondeur;
    sp->suiv= s.suiv;
    sp->prec=s.prec;
    if (symbol_table->first == NULL) {
        symbol_table->first=sp;
        symbol_table->last=sp;
        printf("on a inséré liste vide\n");
    }
    else {
        sp->prec=symbol_table->last;
        symbol_table->last->suiv = sp;
        symbol_table->last = sp;
    }
    Current_lenght++;
}

void Delete_Last() {
    symbole *tmp = symbol_table->last;
    symbol_table->last=symbol_table->last->prec;
    printf("Last Deleted %s\n", tmp->nom);
    printf("Current Last %s\n", symbol_table->last->nom);
    if (symbol_table->last == NULL) symbol_table->first = NULL;
    free(tmp);
    Current_lenght--;
}

/* Delete symbole même profondeur */
void Delete_Prof(){
    while ((symbol_table->last != NULL) && (symbol_table->last->profondeur == profondeur_global)){
        Delete_Last();
    }
}

symbole * Search_Symbole (char *nom){
    bool found = false;
    symbole * current = symbol_table->first;
    while ((current != NULL) && (!found)){
        if (strcmp(current->nom,nom)==0){
            found = true;
        }else{
            current = current->suiv;
        }    
    }
    return current;
}

int Index_Symbole (char *nom){
    bool found = false;
    int index = 0;
    symbole * current = symbol_table->first;
    while ((current != NULL) && (!found)){
        if (strcmp(current->nom,nom)==0){
            found = true;
        }else{
            current = current->suiv;
            index++;
        }    
    }
    return index;
}

void Update_Init (symbole s){
    symbole * sym = Search_Symbole(s.nom);
    sym->init = true;
}


void Ts_new(char *nom, bool init){ 
    symbole s = Create_Symbole(nom,init);
    printf(" ----------- Insertion symbole %s\n",nom); 
    Insert(s);
}

void Ts_new_tmp (){
    symbole tmp = Create_Symbole("tmp",false);
    printf(" ----------- Insertion symbole %s\n",tmp.nom); 
    Insert(tmp);
}


void Increase_Prof() {
    profondeur_global++ ;
}

void Current_Prof() {
    printf("Profondeur: %d\n",profondeur_global);;
}

void Decrease_Prof() {
    profondeur_global-- ;
}

int ts_last() {
    return Current_lenght;
}

void Copy_Value(char *nom) {
    symbole * s = Search_Symbole(nom);
    strcpy(symbol_table->last->nom , s->nom);
}