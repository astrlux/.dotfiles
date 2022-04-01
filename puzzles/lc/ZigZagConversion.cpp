#include <string>
#include <unordered_map>
using namespace std;

class Solution {
public:
  string convert(string s, int numRows) {
    if (numRows == 1)
      return s;
    int n = numRows;
    // take care of 2 rows, as a separate case.
    if (n == 2) {
      string r1 = "", r2 = "";
      int parity = 0;
      for (char c : s) {
        if (parity % 2 == 0) {
          r1 += c;
        } else
          r2 += c;
        parity = parity ? 0 : 1; // toggle parity
      }
      return r1 + r2;
    }
    unordered_map<int, string> CM; // conversion map
    string::iterator it = s.begin();
    int i = 0;
    bool wayUp = 0;
    while (it != s.end()) {
      if (!wayUp && i <= n - 1) {
        CM[i] += *it;
        if (i != n - 1) {
          ++i;
        } else {
          i = n - 2;
          wayUp = 1;
        }
      } else if (wayUp && i >= 1) {
        CM[i] += *it;
        if (i != 1) {
          --i;
        } else {
          i = 0;
          wayUp = 0;
        }
      }
      ++it; // increment iterator
    }
    string result = "";
    int j = 0;
    while (CM.find(j) != CM.end()) {
      result += CM[j++];
    }
    return result;
  }
};

/**
PAYPALISHIRING, 3
01230123012301
0: PAHN
1: ALIG
2: YIR
3: PSI
PAHN APLSIIG YIR
0000 1313131 222
PAYPALISHIRING, 4
01234012340123
0: PLR
1: AII
2: YSN
3: PHG
*/
