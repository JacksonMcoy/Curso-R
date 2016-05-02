// Programa que muestra el manejo de arrays y punteros

#include <iostream>
using namespace std;

int main ()
{
  int numeros[5];
  int * p;
  p = numeros;  *p = 10;
  p++;  *p = 20;
  p = &numeros[2];  *p = 30;
  p = numeros + 3;  *p = 40;
  p = numeros;  *(p+4) = 50;
  for (int  n=0; n < 5; n ++)
    cout << numeros[n] << " ";
    return 0;
}
