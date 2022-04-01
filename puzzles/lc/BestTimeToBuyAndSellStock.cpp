#include <vector>
class Solution {
public:
  int maxProfit(std::vector<int> &prices) {
    int minprice = INT_MAX, maxprofit = 0;
    for (int price : prices) {
      if (price < minprice) {
        minprice = price;
      } else if (price - minprice > maxprofit) {
        maxprofit = price - minprice;
      }
    }
    return maxprofit;
  }
};
