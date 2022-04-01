struct ListNode {
  int val;
  ListNode *next;
  // 3 constructors
  ListNode() : val(0), next(nullptr) {}
  ListNode(int x) : val(x), next(nullptr) {}
  ListNode(int x, ListNode *next) : val(x), next(next) {}
};

class Solution {
public:
  ListNode *reverseList(ListNode *head) {
    ListNode *n = head;
    ListNode *p = nullptr;
    while (head) {
      n = head->next;
      head->next = p;
      p = head;
      head = n;
    }
    return p;
  }
};

/**APPROVED
 * 1 <- 2 <- 3 <- 4
 * head = 4
 * next = nullptr
 * tmp = 3
 */
/**APPROVED
 * 1
 * head = 1
 * next = nullptr
 * tmp  = N/A
 */
/**CHECKING
 * nullptr
 * head = nullptr
 * next = N/A
 * tmp  = N/A
 */
