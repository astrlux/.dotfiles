#include <iostream>
#include <string>
#include <vector>
#define pb push_back
using namespace std;
class Solution {
public:
  vector<string> generateParenthesis(int n) {
    vector<string> res;
    addingpar(res, "", n, 0);
    return res;
  }
  void addingpar(vector<string> &v, string str, int n, int m) {
    if (n == 0 && m == 0) {
      v.pb(str);
      return;
    }
    if (m > 0) {
      addingpar(v, str + ")", n, m - 1);
    }
    if (n > 0) {
      addingpar(v, str + "(", n - 1, m + 1);
    }
  }
};

int main() {
  printf("%s", "Enter a number");
  int n;
  cin >> n;
  Solution s;
  vector<string> p = s.generateParenthesis(n);
  for (auto s : p)
    cout << s << " ";
  cout << "\n";
}
