//variables y ambitos en C++

#include<iostream>

using namespace std;

int main(){
  int x = 3;
  cout << "x = " << x << endl;
  {
    int x = 4;
    int y = 7;
    cout << "x = " << x << " y = " << y << endl;
  }
  cout << "x = " << x << " y = " << y << endl;
  return 0;
}    
