/**
PRIORITIES ~ STRIPE TECH INTERVIEW
- user
- conciseness
- readability */
#include <iostream>
#include <vector>

int main() {
  std::cout << "Enter size of vector: ";

  // read in `size`.
  int SIZE;
  std::cin >> SIZE;

  // read in the duplicated values.
  std::cout << "Enter the duplicated element: ";
  int elem;
  std::cin >> elem;

  // instantiate vector with size + elem.
  std::vector<int> arr(SIZE, elem);

  // print out the vector.
  for (int i = 0; i < SIZE; ++i)
    std::cout << arr[i] << " ";

  // print out newline character for readability.
  std::cout << "\n";
  return 0;
}
