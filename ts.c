#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include "ts.h"
#include <stdbool.h> 

int profondeur_global =0;
symbole_tab *symbol_table;


symbole Create_Symbole (char nom[8], bool init) {
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
        symbol_table->last = symbol_table->last->suiv;
        printf("liste pas vide\n");
    }
}

void Delete_Last() {
    symbole *tmp = symbol_table->last;
    symbol_table->last=symbol_table->last->prec;
    printf("Last Deleted %s\n", tmp->nom);
    free(tmp);
}

/* Delete symbole même profondeur */
void Delete_Prof(){
    symbole * currentlast = symbol_table->last;
    while (currentlast->profondeur==profondeur_global){
        Delete_Last(symbol_table);
        currentlast=symbol_table->last;
    }
}

symbole * Search_Symbole (symbole s){
    bool found = false;
    symbole * current = symbol_table->first;
    while (!found && current != NULL){
        if(current->nom == s.nom){
            found = true;
        }else{
            current = current->suiv;
        }    
    }
    return current;
}

void Update_Init (symbole s){
    symbole * sym = Search_Symbole(s);
    sym->init = true;
}


void Ts_new(char nom[8], bool init){
    printf("Création symbole %s\n",nom);   
    symbole s = Create_Symbole(nom,init);
    printf("Insertion symbole %s\n",nom); 
    Insert(s);
}

void Ts_new_tmp (){
    symbole tmp = Create_Symbole("tmp",false);
    Insert(tmp);
}


void Increase_Prof() {
    profondeur_global++ ;
}

void Decrease_Prof() {
    profondeur_global-- ;
}
