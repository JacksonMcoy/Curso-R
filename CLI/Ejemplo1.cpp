// Un ejemplo de punteros usando c++

#include <iostream>
using namespace std;

int main ()
{
  int valor1, valor2;
  int * mypointer;

  mypointer = &valor1;
  *mypointer = 10;
  mypointer = &valor2;
  *mypointer = 20;
  cout << "El valor1 de es  " << valor1 << '\n';
  cout << "El valor2 de es " << valor2 << '\n';
  return 0;
}