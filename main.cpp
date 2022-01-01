#include "/Users/astrlux/stdc++.h"
using namespace std;
class Solution {
public:
  int coinChange(vector<int> &coins, int amount) {
    vector<int> needs(amount + 1, amount + 1);
    needs[0] = 0;
    for (auto c : coins) {
      for (int a = c; a < amount; ++a) {
        needs[a] = min(needs[a], needs[a - c] + 1);
      }
    }
    return needs.back() > amount ? -1 : needs.back();
  }
};

/**
topmost row as numbers 1..amount
    init to 0 or multiple
leftmost column as amounts
    init to 0
*/
