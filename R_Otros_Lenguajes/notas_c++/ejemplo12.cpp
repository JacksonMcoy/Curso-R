// Un uso de puntero a void para pasar
// argumentos genericos a una funcion

#include <iostream>
using namespace std;

void aumentar (void* data, int pTam)
{
  if ( pTam == sizeof(char) )
  { char* pchar; pchar=(char*)data; ++(*pchar); }
  else if (pTam == sizeof(int) )
  { int* pint; pint=(int*)data; ++(*pint); }
}

int main ()
{
  char a = 'x';
  int b = 1602;
  aumentar (&a,sizeof(a));
  aumentar (&b,sizeof(b));
  cout << a << ", " << b << '\n';
  return 0;
}	
