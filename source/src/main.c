#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

typedef struct p {
  char nome[50];
} Pessoa;

void entradados(Pessoa *p) {
  printf("Digite seu nome: ");
  if(fgets(p->nome, sizeof(p->nome), stdin) != NULL) {
    size_t len = strlen(p->nome);
    if(len > 0 && p->nome[len-1] == '\n') {
      p->nome[len-1] = '\0';
    }
  } else {
    printf("Erro ao ler nome.\n");
  }
}

int main() {

  Pessoa p;
  entradados(&p);

  printf("\nSeja bem-vindo, %s!\n", p.nome);

  return 0;
}
