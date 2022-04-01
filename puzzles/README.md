| Tree | Hints |
| :---: | :---- |
| [Invert Binary Tree](https://leetcode.com/problems/invert-binary-tree/) | Invert left and right subtree, switching the root's children to each inversion.|
| [Validate BST](https://leetcode.com/problems/validate-binary-search-tree/) | Create helper method which keeps track of global max and min, then go through each node checking the properties.|
| [Binary Tree Level Order Traversal](https://leetcode.com/problems/binary-tree-level-order-traversal/) | Keep a queue and for the size of each level, pop from the queue and store the value of the node (if not null) in a array for that level. After each level is processed, append the array for each level to the larger result array. |
| [Subtree of Another Tree](https://leetcode.com/problems/subtree-of-another-tree/submissions/) | Find all nodes in the original tree with same value as subRoot, check if they're the same tree using the isSameTree logic.|
| [Binary Tree Maximum Path Sum](https://leetcode.com/problems/binary-tree-maximum-path-sum/) | |
| [Serialize and Deserialize Binary Tree](https://leetcode.com/problems/serialize-and-deserialize-binary-tree/https://leetcode.com/problems/binary-tree-maximum-path-sum/) | |
| [Construct Binary Tree from Preorder and Inorder Traversal](https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/) | |
| [Kth Smallest Element in BST](https://leetcode.com/problems/kth-smallest-element-in-a-bst/) | |
| [Lowest Common Ancestor of BST](https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/) | |
| []() | |
| []() | |
| []() | |
| []() | |

| Array | Hints |
| :---: | :---- |
| [Maximum Subarray](https://leetcode.com/problems/maximum-subarray) | When cumulative sum of previous numbers is less than 0, it doesn't help us, so reset the cumulative sum of previous numbers to simply 0. At any time during the cumulative addition if the cumulative sum is greater than the max possible value found so far, update it. After running through all the numbers, return the maximum cumulative sum value found. |
| [Maximum Product Subarray](https://leetcode.com/problems/maximum-product-subarray/) | Initialize maxProduct to the largest element, andAlmost regular binary search. keep multiplying cumulatively keeping track of not only the maxprod but also minprod. on each iteration, update maxprod and minprod (keep tmp val for either maxprod/minprod cuz while calculating either, its value won't be consistent for the current iteration. If local maxprod is ever larger than absolute maxprod, then update absolute max prod. |
| [Find Minimum in Rotated Sorted Array](https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/) | Maintain two `low` and `high` pointers. While `nums[low] > nums[high]`, the minimum value is somewhere between low and high, so simply utilize normal binary search, except adjust `low` and `high` based on where the lowest value may be. |
| []() | |
| []() | |
| []() | |
| []() | |

| Dynamic Programming | Hints |
| :---: | :---- |
| [Decode Ways](https://leetcode.com/problems/decode-ways/) | Subproblem is current string + problem(s[1:]). Traverse string backwards, with initial subproblem value as 1, to represent how to decode empty-string. Two cases: 0 (whichas 0 ways to decode) and otherwise, dp[i]=d[i+1] by default but if the current pointer has space, and the current digit is 1 or the current digit is 2 and the next digit is between 0 and 6, we also do dp[i] += dp[i+2] |
| []() | |
| []() | |
| []() | |
| []() | |
| []() | |
