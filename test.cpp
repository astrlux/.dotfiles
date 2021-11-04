#include <algorithm>
#include <cstdio>
#include <vector>
int main() {
  std::vector<int> arr;
  for (int i = 0; i < 5; ++i) {
    arr.push_back(i);
  }
  for (int i = 0; i < 5; ++i) {
    printf("%d ", arr[i]);
  }
  std::random_shuffle(arr.begin(), arr.end());
  for (int i = 0; i < 5; ++i) {
    printf("%d ", arr[i]);
  }
  printf("");
}
