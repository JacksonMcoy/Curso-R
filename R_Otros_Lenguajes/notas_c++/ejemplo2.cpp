//almacenamiento de tipos de dats en C++
 
#include <iostream>

using namespace std;

int main()
{
  cout << "El almacenamiento asignado para char es " << sizeof(char) 
       << " bytes" << endl;
  cout << "El almacenamiento asignado para unsigned short integer es " 
       << sizeof(unsigned short int) << " bytes" << endl;
  cout << "El almacenamiento asignado para integer es " << sizeof(int)
       << " bytes" << endl;
  cout << "El almacenamiento asignado para long integer es " 
       << sizeof(long int)  << " bytes" << endl;
  cout << "El almacenamiento asignado para unsigned long integer es " 
       << sizeof(unsigned long int) << " bytes" << endl;
  cout << "El almacenamiento asignado para float es " << sizeof(float)
       << " bytes" << endl;
  cout << "El almacenamiento asignado para double es " << sizeof(double)
       << " bytes" << endl;
  cout << "El almacenamiento asignado para long double es " 
       << sizeof(long double) << " bytes" << endl;
  return 0;
}
