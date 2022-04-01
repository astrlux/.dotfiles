#include <iostream>
#include <string>

using namespace std;

class Solution {
public:
  int myAtoi(string s) {
    int sign = 1, base = 0, i = 0;
    // find first not of ' '
    while (s[i] == ' ') {
      i++;
    }
    // check the sign
    if (s[i] == '-' || s[i] == '+') {
      sign = 1 - 2 * (s[i++] == '-');
    }
    // construct integer
    while (s[i] >= '0' && s[i] <= '9') {
      if (base > INT_MAX / 10 || (base == INT_MAX / 10 && s[i] - '0' > 7)) {
        if (sign == 1)
          return INT_MAX;
        else
          return INT_MIN;
      }
      base = 10 * base + (s[i++] - '0');
    }
    return base * sign;
  }
};

int main() {
  Solution s; // instantiate "Solution"
  cout << s.myAtoi("   -134") << "\n";
  cout << s.myAtoi("   -42") << "\n";
  return 0;
}
