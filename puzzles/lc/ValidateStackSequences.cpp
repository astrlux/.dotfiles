#include "/Users/astrlux/stdc++.h"

bool validateStackSequences(std::vector<int> &pushed,
                            std::vector<int> &popped) {
  std::stack<int> stack;
  int i = 0;
  for (int x : pushed) {
    stack.push(x);
    while (stack.size() && stack.top() == popped[i]) {
      stack.pop();
      ++i;
    }
  }
  return stack.size() == 0;
}

int main() {
  std::vector<int> pushed(4, 5);
  std::vector<int> popped(4, 5);
  std::vector<int> tested(3, 4);
  bool test = validateStackSequences(pushed, popped);
  for (size_t elem : tested) {
    std::cout << elem << " ";
  }
  std::cout << "\n";
}
