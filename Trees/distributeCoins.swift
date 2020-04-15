/*
 Distribute Coins in Binary Tree

 Given the root of a binary tree with N nodes, each node in the tree has node.val coins, and there are N coins total.

 In one move, we may choose two adjacent nodes and move one coin from one node to another.  (The move may be from parent to child, or from child to parent.)

 Return the number of moves required to make every node have exactly one coin.

 Example 1:

 Input: [3,0,0]
 Output: 2
 Explanation: From the root of the tree, we move one coin to its left child, and one coin to its right child.

 Example 2:

 Input: [0,3,0]
 Output: 3
 Explanation: From the left child of the root, we move two coins to the root [taking two moves].  Then, we move one coin from the root of the tree to the right child.
 
 Example 3:

 Input: [1,0,2]
 Output: 2

 Example 4:

 Input: [1,0,0,null,3]
 Output: 4
  
 Note:

 1<= N <= 100
 0 <= node.val <= N
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

func distributeCoins(_ root: TreeNode?) -> Int {
    var moves = 0
    traverseCount(root, moves: &moves)
    return moves
}

func traverseCount(_ node: TreeNode?, moves: inout Int) -> Int {
    guard let node = node else { return 0 }
    
    let leftCount = traverseCount(node.left, moves: &moves)
    let rightCount = traverseCount(node.right, moves: &moves)
    
    moves += abs(leftCount) + abs(rightCount)
    
    // New node value (leave one coin behind)
    return node.val - 1 + leftCount + rightCount
}
