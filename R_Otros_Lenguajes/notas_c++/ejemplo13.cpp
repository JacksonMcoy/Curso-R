// Referencias en C++

#include <iostream>
using namespace std;
 
int main() {
   int numero = 88;          
   int & refnumero = numero; // Declaramos  una referencia  a la varible  numero
                             // Ambos refnumero  y numero  se refieren al mismo valor
 
   cout << numero << endl;    
   cout << refnumero << endl; 
 
   refnumero = 99;            // Reasignamos un nuevo valor a refnumero
   cout << refnumero << endl;
   cout << numero << endl;    // El value de  numero tambien cambia
 
   numero = 55;               // Reasignamos  un nuevo valor a numero
   cout << numero << endl;
   cout << refnumero << endl; // EL valor de refnumero tambien cambia 
}
