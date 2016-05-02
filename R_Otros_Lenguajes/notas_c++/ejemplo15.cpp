/* Pasando por valor  en una  funcion  */

#include <iostream>
using namespace std;
 
int cuadrado(int);
 
int main() {
   int numero = 8;
   cout <<  "En main(): " << &numero << endl;  
   cout << numero << endl;         // 8
   cout << cuadrado(numero) << endl; // 64
   cout << numero << endl;         // 8 - no cambia
}
 
int cuadrado(int n) { 
   cout <<  "En  cuadrado(): " << &n << endl;  
   n *= n;           // clon  modificado dentro de la  funcion
   return n;
}
