#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "nomes.h"
int comparaNome(const void* a, const void* b){
    const  struct name * x = a ;
    const  struct name * y = b ;
    int r = strcmp( x->nome, y->nome);
    return r;
}
