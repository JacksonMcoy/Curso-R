// Ejemplo sobre const y punteros en C++

int main(){

    int x=1, y=1;
    const int* p1=&x;
    int* const p2 = &x;
    p1 = &y;
    p2 =&y;  //error 
    
    p1[0] += 1 //error
    p2[0] += 1;

    return 0;
   
  }
