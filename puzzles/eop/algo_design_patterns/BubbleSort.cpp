#include <iostream>
#include <vector>

class Sort {
public:
  void bubble(std::vector<int> &a, int n) {
    for (int i(0); i < n - 1; ++i) {
      for (int j(i + 1); j < n; ++j) {
        if (a[i] > a[j]) { // swap
          int temp = a[j];
          a[j] = a[i];
          a[i] = temp;
        }
      }
    }
  }
};

int main() {
  std::vector<int> a = {53, 15, 9,  42, 50, 55, 70, 10, 62, 98,
                        3,  85, 90, 67, 51, 4,  94, 12, 81, 27};
  for (auto const &value : a)
    printf("%d ", value);
  printf("\n");
  Sort s;
  s.bubble(a, a.size());
  for (auto const &value : a)
    printf("%d ", value);
  printf("\n");
}
