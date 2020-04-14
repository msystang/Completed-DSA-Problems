/*
 Invert Binary Tree
 
 Invert a binary tree.

 Example:

 Input:

      4
    /   \
   2     7
  / \   / \
 1   3 6   9
 
 Output:

      4
    /   \
   7     2
  / \   / \
 9   6 3   1
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

func invertTree(_ root: TreeNode?) -> TreeNode? {
    guard let root = root else { return nil }
    
    let left = invertTree(root.left)
    let right = invertTree(root.right)
    root.left = right
    root.right = left
    
    return root
}
