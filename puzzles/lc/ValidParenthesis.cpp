#include <iostream>
#include <stack>
#include <string>
#include <unordered_map>
#include <vector>

using namespace std;

class Solution {
public:
  bool isValid(string s) {
    string string_stack;
    for (char c : s) {
      if (c == '[' || c == '{' || c == '(') {
        // ss.push(c);
        string_stack += c;
      } else if (c == ']' || c == '}' || c == ')') {
        if (string_stack.empty())
          return false;
        char top = string_stack.back();
        string_stack.pop_back();
        if (c == ']' && top != '[')
          return false;
        else if (c == ')' && top != '(')
          return false;
        else if (c == '}' && top != '{')
          return false;
      }
    }
    return string_stack.empty();
  }
};

void assertEquals(int v1, int v2) {
  if (v1 == v2) {
    cout << "Test passed\n";
  } else {
    cout << "[X] Test failed\n";
  }
}

int main() {
  Solution sol;
  // UNIT TESTS
  vector<pair<int, string>> tests = {};
  tests.push_back(make_pair(0, "["));
  tests.push_back(make_pair(1, "()[]{}"));
  tests.push_back(make_pair(0, "(]"));
  for (auto test : tests) {
    assertEquals(test.first, sol.isValid(test.second));
  }
  vector<int> a = {5};
}
