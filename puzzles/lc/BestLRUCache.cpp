#include "/Users/astrlux/stdc++.h"
using namespace std;

class LRUCache {
private:
  const size_t CAPACITY;
  unordered_map<size_t, size_t> cache;
  list<size_t> recents;
  unordered_map<size_t, list<size_t>::iterator> pos;
  void touch(int key) {
    if (pos.find(key) != pos.end()) {
      printf("Evicting key: %zu\n", *pos[key]);
      recents.erase(pos[key]);
    } else if (CAPACITY == pos.size()) {
      size_t old = recents.back();
      printf("Evicting key: %zu\n", old);
      recents.pop_back();
      cache.erase(old);
      pos.erase(old);
    }
    recents.push_front(key);
    printf("Adding key: %zu\n", recents.front());
    pos[key] = recents.begin();
  }

public:
  LRUCache(size_t capacity);
  size_t get(size_t key);
  void put(size_t key, size_t value);
  void displayLRUCache();
};

LRUCache::LRUCache(size_t capacity) : CAPACITY(capacity) {}

size_t LRUCache::get(size_t key) {
  if (cache.find(key) != cache.end()) {
    touch(key);
    return cache[key];
  }
  return -1;
}

void LRUCache::put(size_t key, size_t value) {
  touch(key);
  cache[key] = value;
}

void LRUCache::displayLRUCache() {
  // PRINT CAPACITY & RECENTS
  printf("CAPACITY: %zu/%zu, RECENTS: [ ", pos.size(), CAPACITY);
  for (auto r : recents)
    printf("%zu ", r);
  printf("]\nLRU CACHE:\n");

  // PRINT STATE OF CACHE
  for (auto const &pair : cache) {
    printf("%zu: %zu\n", pair.first, pair.second);
  }
  printf("\n");
}

int main() {
  LRUCache cache(5);
  cache.put(3, 999);
  cache.displayLRUCache();
  cache.put(4, 999);
  cache.displayLRUCache();
  cache.put(3, 999);
  cache.displayLRUCache();
  cache.put(5, 999);
  cache.displayLRUCache();
  cache.put(6, 999);
  cache.displayLRUCache();
  cache.put(7, 999);
  cache.displayLRUCache();
  cache.put(8, 999);
  cache.displayLRUCache();
  cache.put(9, 999);
  cache.displayLRUCache();
}
