#ifndef NOMES_H_INCLUDED
#define NOMES_H_INCLUDED

typedef struct name{
    char nome[20];
}name_t;

int comparaNome(const void* a, const void* b);

#endif // NOMES_H_INCLUDED
