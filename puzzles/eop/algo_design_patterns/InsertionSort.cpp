#include <iostream>
#include <vector>

using namespace std;

class Insertion {
public:
  void sort(vector<int> &a, int n) {
    for (int i = 1; i < n; ++i) {
      int cv = a[i], j = i - 1;
      while (j >= 0 && a[j] > cv) {
        a[j + 1] = a[j];
        --j;
      }
      a[j + 1] = cv;
    }
  }
};

int main() {
  std::vector<int> a = {53, 15, 9,  42, 50, 55, 70, 10, 62, 98,
                        3,  85, 90, 67, 51, 4,  94, 12, 81, 27};
  for (auto const &value : a)
    printf("%d ", value);
  printf("\n");
  Insertion s;
  s.sort(a, a.size());
  for (auto const &value : a)
    printf("%d ", value);
  printf("\n");
  return 0;
}
