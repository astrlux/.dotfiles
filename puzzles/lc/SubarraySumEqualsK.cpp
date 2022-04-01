#include <unordered_map>
#include <vector>
using namespace std;

class Solution {
public:
  int subarraySum(vector<int> &nums, int k) {
    int n=nums.size(),curSum(0),count(0);
    unordered_map<int,int> m;
    for(int i=0;i<n;++i) {
      curSum+=nums[i];
      if (curSum==k)
        ++count;
      if (m[curSum-k])
        count += m[curSum-k];
      ++m[curSum]; // update this (last) so as to not tamper with our previous
                   // records.
    }
    return count;
  }
};
