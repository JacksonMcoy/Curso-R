// Ejemplo de uso del operador de direccion de C++

#include <iostream>

using namespace std;

int main(){

    double v[4] ={2., 4., 6., 8.};
    cout << "La direccion de v[0] es =" << &v[0] << endl;
    cout << "La direccion de v[0] es =" << &v[1] << endl;
    cout << "La direccion de v[0] es =" << &v[2] << endl;
    cout << "La direccion de v[0] es =" << &v[3] << endl;
    
    return 0;
    
}
