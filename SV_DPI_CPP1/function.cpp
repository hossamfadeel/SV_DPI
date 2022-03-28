

//----------------------------------------------
// C++ file
//----------------------------------------------
#include <stdio.h>
#include <iostream>
#include <svdpi.h>

using namespace std;

extern "C" void sv_method();

extern "C" void c_method() {

  printf("  [C-Prog]   Hello World...!\n");
  sv_method();
}
