#include "/Users/astrlux/stdc++.h"
using namespace std;

class Solution {
public:
  int fib(int n) {
    int a = 1, b = 1;
    while (n--) {
      a = (b += a) - a;
    }
    return a;
  }
};
