#include <algorithm>
#include <iostream>
#include <vector>
using namespace std;

class Solution {
public:
  void nextPermutation(vector<int> &nums) {
    bool hasNextPerm = next_permutation(nums.begin(), nums.end());
  }
};
int main() { std::ios::sync_with_stdio(false); }
