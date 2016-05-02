/* Pasando por referencia usando punteros */

#include <iostream>
using namespace std;
 
void cuadrado(int *);
 
int main() {
   int numero = 7;
   cout <<  "En main(): " << &numero << endl;  
   cout << numero << endl;   // 8
   cuadrado(&numero);          // Referencias explicitas para pasar una direccion
   cout << numero << endl;   // 64
}
 
void cuadrado(int * pNumero) {  // La funcion toma un  puntero int (no-const)
   cout <<  "En cuadrado(): " << pNumero << endl;  
   *pNumero *= *pNumero;      // Explicita desreferencia para obtener el valor apuntado
}