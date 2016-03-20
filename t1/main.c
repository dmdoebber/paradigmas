#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "nomes.h"
int main(){
    int cont = 0, i = 0;
    char letra[20];
    FILE *fp;
    fp = fopen("Nomes.txt", "r");
    while(!feof(fp)){
        fgets(letra,20,fp);
        if(letra[0] == 'R') cont++;
    }
    fclose(fp);
    name_t nome[cont];
    fp = fopen("Nomes.txt", "r");
    while(!feof(fp)){
        fgets(letra,20,fp);
        if(letra[0] == 'R') strcpy(nome[i++].nome,letra);
    }
    fclose(fp);
    qsort(nome, cont, sizeof(name_t),comparaNome);
    fp = fopen("lista.html","w+");
    fprintf(fp,"<html>\n<title>LISTA</title>\n<body>\n<ul>\n");
    for(i = 0; i < cont; i++) fprintf(fp,"<li> %s </li> ",nome[i].nome);
    fprintf(fp,"</ul>\n</body>\n</html>");
    return EXIT_SUCCESS;
}
