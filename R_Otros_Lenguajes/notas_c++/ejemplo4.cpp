// Ejemplo de bucles: for-while  en c++

#include<iostream>
#include <cstdlib>

using namespace std;

int main(int argc, char* argv[]){

    int inicio = atoi(argv[1]);
    int cota  = atoi(argv[2]);
    
    //Calculamos la suma de elementos con el bucle  for
    int  sum =0;
    int i = inicio;
    while(sum <=cota){
        sum = sum + 1;
        i++;
     }
    cout << "La suma desde el bucle while es "<< sum << endl;
    return 0;
}
