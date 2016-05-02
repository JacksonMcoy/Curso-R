// punteros como argumentos

#include <iostream>
using namespace std;

void incremento (int* inicio, int* parar)
{
  int * actual = inicio;
  while (actual != parar) {
    ++(*actual);  // aumenta el valor apuntado
    ++actual;     // aumenta el puntero
  }
}

void imprimir (const int* inicio, const int* parar)
{
  const int * actual = inicio;
  while (actual != parar) {
    cout << *actual << '\n';
    ++actual;     // aumenta el puntero
  }
}

int main ()
{
  int numeros[] = {10,20,30};
  incremento (numeros,numeros+3);
  imprimir (numeros,numeros+3);
  return 0;
}