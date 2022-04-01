#include <iostream>
#define divide(a, b) (a / b)

// prevents C++ name mangling. Tells compiler to use C's linkage.
extern "C" int main() {
  std::cout << divide(40, 5) << "\n";
  return 0;
}

void test(int a, int b) { std::cout << a << " " << b << "\n"; }
