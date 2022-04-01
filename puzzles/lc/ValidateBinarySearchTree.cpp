#include <climits>
struct TreeNode {
  int val; // Value of node
  // Left and Right children
  TreeNode *left;
  TreeNode *right;
  // Flexible construction
  TreeNode() : val(0), left(nullptr), right(nullptr) {}
  TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
  TreeNode(int x, TreeNode *left, TreeNode *right)
      : val(0), left(left), right(right) {}
};

class Solution {
public:
  bool isValidH(TreeNode *node, long maximum, long minimum) {
    // base case.
    if (!node)
      return true;
    // if current value voids the universal restrictions.
    else if (node->val <= minimum || node->val >= maximum)
      return false;
    // check each child.
    return isValidH(node->left, node->val, minimum) &&
           isValidH(node->right, maximum, node->val);
  };
  bool isValidBST(TreeNode *root) {
    return isValidH(root, LONG_MAX, LONG_MIN);
  };
};
