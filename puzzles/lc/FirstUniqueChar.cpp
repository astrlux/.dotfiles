#include <string>
#include <unordered_map>
using namespace std;
class Solution {
public:
  int firstUniqChar(string s) {
    unordered_map<char, pair<int, int>> m;
    for (int i = 0; i < s.size(); ++i) {
      m[s[i]].first++;
      m[s[i]].second = i;
    }

    /** at this EXACT point, every element in the map is...
          key: char in string
          value: pair<occurences, last_index> */

    int idx = s.size();
    for (auto &item : m) {
      if (item.second.first == 1) { // char doesn't repeat.
        idx = min(item.second.second, idx);
      }
    }
    return idx == s.size() ? -1 : idx;
  }
};
