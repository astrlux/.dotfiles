#include <vector>
using namespace std;
class Solution {
public:
  int rob(vector<int> const &nums) {
    int odds = 0, evens = 0;
    for (int i = 0; i < nums.size(); ++i) {
      if ((i % 2) || i == nums.size() - 2)
        odds += nums[i];
      else
        evens += nums[i];
    }
    return max(odds, evens);
  }
};
