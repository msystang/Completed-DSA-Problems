/*
 Increasing Order Search Tree

 Given a binary search tree, rearrange the tree in in-order so that the leftmost node in the tree is now the root of the tree, and every node has no left child and only 1 right child.

 Example 1:
 Input: [5,3,6,2,4,null,8,1,null,null,null,7,9]

        5
       / \
     3    6
    / \    \
   2   4    8
  /        / \
 1        7   9

 Output: [1,null,2,null,3,null,4,null,5,null,6,null,7,null,8,null,9]

  1
   \
    2
     \
      3
       \
        4
         \
          5
           \
            6
             \
              7
               \
                8
                 \
                  9
  

 Constraints:

 The number of nodes in the given tree will be between 1 and 100.
 Each node will have a unique integer value from 0 to 1000.
 */

// Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

func increasingBST(_ root: TreeNode?) -> TreeNode? {
    var inOrder = [Int]()
    
    inOrderTraversal(root, inOrder: &inOrder)
    
    let newRoot: TreeNode? = TreeNode(0)
    var current: TreeNode? = newRoot
    
    for element in inOrder {
        current?.right = TreeNode(element)
        current = current?.right
    }
    
    return newRoot?.right
}

func inOrderTraversal(_ root: TreeNode?, inOrder: inout [Int]) {
    guard let root = root else { return }
    
    inOrderTraversal(root.left, inOrder: &inOrder)
    inOrder.append(root.val)
    
    inOrderTraversal(root.right, inOrder: &inOrder)
}
