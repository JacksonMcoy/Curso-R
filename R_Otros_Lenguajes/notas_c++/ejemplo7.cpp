// Ejemplo de desreferenciacion de punteros en C++

#include <iostream>

using namespace std;

int main(){

   int*  p =0;
   int i =1;
   p = &i;
   
   cout << "La direccion de i = " <<  &i << endl;
   cout << " La direccion de p = " << &p << endl;
   
   cout << "El valor de p =" <<p << endl;
   cout << "El valor almacenado en p = " << *p << endl;
   cout << "El valor almacenado en p =" << p[0] << endl;
   
return 0;
}
