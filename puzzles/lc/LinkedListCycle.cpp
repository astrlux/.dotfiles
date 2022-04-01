struct ListNode {
  int val;
  ListNode *next;
  ListNode(int x) : val(x), next(nullptr) {}
};

class Solution {
public:
  bool hasCycle(ListNode *head) {
    ListNode *fast = head;
    ListNode *slow = fast;
    while (fast && fast->next != nullptr) {
      fast = fast->next->next;
      slow = slow->next;
      if (slow == fast)
        return true;
    }
    return false;
  }
};

int main() {}
