/* Paso por referencia usando referencias  */

#include <iostream>
using namespace std;
 
void cuadrado(int &);
 
int main() {
   int numero = 8;
   cout <<  "En main(): " << &numero << endl;  
   cout << numero << endl;  // 8
   cuadrado(numero);          // Referenciacion implicita (sin '&')
   cout << numero << endl;  // 64
}
 
void cuadrado(int & rNumero) {  // la funcion toma una referencia de tipo int  (no-const)
   cout <<  "En cuadrado(): " << &rNumero << endl;  // 
   rNumero *= rNumero;        // desreferencia implicita (sin '*')
}