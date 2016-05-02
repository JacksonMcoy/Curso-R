/* Referencias y  Punteros */

#include <iostream>
using namespace std;
 
int main() {
   int numero1 = 88, numero2 = 22;
 
   // Creamos un puntero apuntando a numero1
   int * pNumero1 = &numero1;  // Referencias explicitas
   *pNumero1 = 99;             // Desreferencias explicitas
   cout << *pNumero1 << endl;  
   cout << &numero1 << endl;   
   cout << pNumero1 << endl;   // contenido de la variable puntero 
   cout << &pNumero1 << endl;  // direccion de la variable  puntero 
   pNumero1 = &numero2;        // Un puntero puede ser reasignado a almacenar otra direccion 
 
   // Creamos una referencia(alias) a numero1
   int & refNumero1 = numero1;  // Referencias implicitas (NO &numero1)
   refNumero1 = 11;             // Desreferencias implicitas (NO *refNumero1)
   cout << refNumero1 << endl;  
   cout << &numero1 << endl;    
   cout << &refNumero1 << endl; 
   //refNumero1 = &numero2;     // Error! Las referencias no pueden ser reasignadas cannot 
                                // error:  conversion invalida desde 'int*' to 'int'
   refNumero1 = numero2;        // refNumero1 es aun un alias para  numero1.
                                // Asignamos el  valor de  numero2 a refNumero1 (y numero1).
   numero2++;   
   cout << refNumero1 << endl;  
   cout << numero1 << endl;     
   cout << numero2 << endl;     
}