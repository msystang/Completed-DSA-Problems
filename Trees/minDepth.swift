/*
 Minimum Depth of Binary Tree

 Given a binary tree, find its minimum depth.

 The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.

 Note: A leaf is a node with no children.

 Example:

 Given binary tree [3,9,20,null,null,15,7],

     3
    / \
   9  20
     /  \
    15   7
 return its minimum depth = 2.
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


func minDepth(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }
    
    var depth = 0
    var queueArr = [root]
    
    while !queueArr.isEmpty {
        depth += 1
        
        for _ in 1...queueArr.count {
            let current = queueArr.removeFirst()
            
            if current.left == nil && current.right == nil {
                return depth
            }
                
            if let left = current.left {
                queueArr.append(left)
            }
            
            if let right = current.right {
                queueArr.append(right)
            }
        }
    }
    return depth
}
