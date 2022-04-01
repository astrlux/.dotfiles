#include "/Users/astrlux/stdc++.h"
using namespace std;

class Solution {
  int decodeWays(string s) {
    if (!s.size())
      return 0;
    int n = s.size();
    int dp[n + 1];
    dp[n] = 1; // 1 way to decode the empty string.
    for (int i = n - 1; i >= 0; --i) {
      if (s[i] == '0') {
        dp[i] = 0;
      } else {
        dp[i] = dp[i + 1]; // may have to process more...
        if (i < n - 1 && (s[i] == '1' || s[i] == '2' && s[i + 1] < '7')) {
          dp[i] += dp[i + 2];
        }
      }
    }
    return dp[0];
  }
};