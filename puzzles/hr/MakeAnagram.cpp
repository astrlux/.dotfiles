#include <iostream>
#include <set>
#include <string>

using namespace std;

/*
 * Complete the 'makeAnagram' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. STRING a
 *  2. STRING b
 */

int makeAnagram(string a, string b) {
  set<char> f(a.begin(), a.end());
  set<char> s(b.begin(), b.end());
  set<char> u = f & s;
}

int main() {
  ofstream fout(getenv("OUTPUT_PATH"));

  string a;
  getline(cin, a);

  string b;
  getline(cin, b);

  int res = makeAnagram(a, b);

  fout << res << "\n";

  fout.close();

  return 0;
}
