#include <unordered_map>
#include <vector>

using namespace std;

class Solution {
public:
  // test to see whether we can run this by itself.
  vector<int> twoSum(vector<int> &nums, int target) {
    unordered_map<int, int> d; // map of key: value, value: index
    for (int i = 0; i < nums.size(); ++i) {
      int test = target - nums[i];
      if (d.find(test) != d.end()) {
        return {i, d[test]};
      } else {
        d[nums[i]] = i;
      }
    }
    return {-1, -1};
  }
};
