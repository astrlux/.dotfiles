#include "/Users/astrlux/stdc++.h"
using namespace std;

class Solution {
public:
  int uniquePaths(int m, int n) {
    int r = m, c = n;
    int dp[r][c]; // init grid
    // topmost row can be visited in one way, just purely rightwards.
    for (int i = 0; i < max(c, r); ++i) {
      if (i < c)
        dp[0][i] = 1;
      if (i < r)
        dp[i][0] = 1;
    }
    for (int i = 1; i < r; ++i)
      for (int j = 1; j < c; ++j)
        dp[i][j] = dp[i][j - 1] + dp[i - 1][j];

    return dp[r - 1][c - 1];
  }
};
