#include <iostream>
#include <vector>
using namespace std;
class Solution {
public:
  int lengthOfLIS(vector<int> &nums) {
    int dp[nums.size()];
    if (nums.size() == 1)
      return 1;

    dp[0] = 1;
    int last_hump = INT_MIN;
    for (int i = 1; i < nums.size(); ++i) {
      if (nums[i] > nums[i - 1]) {
        if (nums[i] <= last_hump)
          dp[i] = dp[i - 1];
        else
          dp[i] = dp[i - 1] + 1;
      } else {
        last_hump = max(dp[i], last_hump);
        dp[i] = dp[i - 1];
      }
    }
    return dp[nums.size() - 1];
  }
};

int main() {
  vector<int> nums = {0, 1, 0, 3, 2, 3};
  vector<int> nums2 = {10, 9, 2, 5, 3, 7, 101, 18};
  vector<int> nums3 = {7, 7, 7, 7, 7, 7, 7, 7, 7};
  Solution s;
  cout << s.lengthOfLIS(nums) << "\n";
  cout << s.lengthOfLIS(nums2) << "\n";
  cout << s.lengthOfLIS(nums3) << "\n";
}
/**

10 9 2 5 3 7 101 18
1  1 1 2 2 3 4   4

0 1 0 3 2 3
1 2 2 3 3 4

7 7 7 7 7 7 7 7
1 1 1 1 1 1 1 1

4 10 4 3 8 9
1 2  2 2 3 4
*/
