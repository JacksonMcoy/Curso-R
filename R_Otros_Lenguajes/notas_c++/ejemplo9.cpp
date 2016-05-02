// Direcciones y desreferenciacion

#include <iostream>
using namespace std;

int main ()
{
  int valor1 = 5, valor2 = 15;
  int * p1, * p2;

  p1 = &valor1;  // p1 = direccion de valor1
  p2 = &valor2; // p2 = direccion de valor2
  *p1 = 9;          // valor apuntado por  p1 = 10
  *p2 = *p1;         // valor apuntado por  p2 = valor apuntado por  p1
  p1 = p2;           // p1 = p2 (el valor del puntero es copiado)
  *p1 = 15;          // valor apuntado por  p1 = 20
  
  cout << "valor1  es " << valor1 << '\n';
  cout << " valor2  es " << valor2 << '\n';
  return 0;
}
