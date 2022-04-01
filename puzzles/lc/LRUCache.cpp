#include <list>
#include <unordered_map>
#include <vector>
using namespace std;

class LRUCache {
private:
  int capacity;

  list<int> recent; // keeps track of LRU key
  unordered_map<int, list<int>::iterator> pos;
  unordered_map<int, int> cache;

  void touch(int key) {
    if (pos.find(key) != pos.end()) {
      recent.erase(pos[key]);
    } else if (pos.size() >= capacity) {
      int old = recent.back(); // get reference to stale elem
      cache.erase(old);
      pos.erase(old);
      recent.pop_back();
    }
    recent.push_front(key);
    pos[key] = recent.begin();
  }

public:
  LRUCache(int capacity) : capacity(capacity) {}
  int get(int key) {
    // return (key exists ? value : -1);
    if (cache.find(key) != cache.end()) {
      touch(key);
      return cache[key];
    } else
      return -1; // -1 if key isn't found.
  }
  // insert {key, value} into cache.
  void put(int key, int value) {
    cache[key] = value;
    touch(key); // crucial that we invoke touch _after_.
  }
};

/**
 * Your LRUCache object will be instantiated and called as such:
 * LRUCache* obj = new LRUCache(capacity);
 * int param_1 = obj->get(key);
 * obj->put(key,value);
 */

/**
 * cap = 3
 * put(1,2);
 * put(2,2);
 * put(3,2);
 * put(4,2);
 */
