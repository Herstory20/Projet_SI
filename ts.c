#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include "ts.h"
#include <stdbool.h> 

int profondeur_global = 0;
int Current_lenght = 0;
int Nb_Instruc = 0;
instruction_list * ins_list;
symbole_tab *symbol_table;
int tab[10];
int i =0 ;
int h =-1 ;

int getTab () {
    h++;
    return tab[h];
}


void setTab (int j) {
    tab[i]=j;
    i++;
}


symbole Create_Symbole (char *nom, bool init) {
    symbole s ;
    strcpy(s.nom,nom);
    s.init = init;
    s.profondeur = profondeur_global;
    s.suiv =NULL;
    s.prec =NULL;
    return s;
}

void Init(){
    //pour la table de symbole
   symbol_table = malloc(sizeof(symbole_tab));
   symbol_table->first = NULL;
   symbol_table->last = NULL;
   //pour la chaîne d'instruction à mémoriser
   ins_list = malloc(sizeof(ins_list));
   ins_list->first = NULL;
   ins_list->last = NULL;
   printf("Bien initialisé\n");
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
    //printf("Last Deleted %s\n", tmp->nom);
    //printf("Current Last %s\n", symbol_table->last->nom);
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
    //printf(" ----------- Insertion symbole %s\n",nom); 
    Insert(s);
}

void Ts_new_tmp (){
    symbole tmp = Create_Symbole("tmp",false);
    //printf(" ----------- Insertion symbole %s\n",tmp.nom); 
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

void Increase_Instru() {
    Nb_Instruc++;
}

int GetNB_Instruc() {
    return Nb_Instruc;
}

void Insert_instruction (char ins1[5],int ins2,int ins3,int ins4){
    char ins[32] = "";
    Concat(ins,ins1,ins2,ins3,ins4);
    if (ins_list->first == NULL){
        ins_list->first = malloc(sizeof(instruction));
        strcpy(ins_list->first->ins,ins);
        ins_list->last = ins_list->first;
    }
    else {
        ins_list->last->suiv = malloc(sizeof(instruction));
        strcpy(ins_list->last->suiv->ins, ins);
        ins_list->last = ins_list->last->suiv;
    }
    Increase_Instru();
}

void Concat (char * ins,char ins1[5],int ins2,int ins3,int ins4){
    char tmp[32];
    strcat(ins,ins1);
    strcat(ins," ");
    if(ins2 != -1){
        sprintf(tmp,"%d ",ins2);
        strcat(ins,tmp);
    }
    if(ins3 != -1){
        sprintf(tmp,"%d ",ins3);
        strcat(ins,tmp);
    }
    if(ins4 != -1){
        sprintf(tmp,"%d ",ins4);
        strcat(ins,tmp);
    }
}

void print_list(){
    instruction * aux = ins_list->first;
    while (aux != NULL){
        printf("------------------------------------------%s\n",aux->ins);
        aux = aux->suiv;
    }
}

void Modif_ins_list(int ifPosition){
    instruction * aux = ins_list->first;
    for(int j=0 ; j<ifPosition-1 ; j++){
        aux = aux->suiv;
    }
    char tmp[32];
    sprintf(tmp,"%d ",GetNB_Instruc()+1);
    Concat(aux->ins,tmp,-1,-1,-1);
    printf("********** %s\n", aux->ins);

}