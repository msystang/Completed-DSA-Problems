/*
 Linked List Cycle

 Given a linked list, determine if it has a cycle in it.

 To represent a cycle in the given linked list, we use an integer pos which represents the position (0-indexed) in the linked list where tail connects to. If pos is -1, then there is no cycle in the linked list.

  

 Example 1:

 Input: head = [3,2,0,-4], pos = 1
 Output: true
 Explanation: There is a cycle in the linked list, where tail connects to the second node.


 Example 2:

 Input: head = [1,2], pos = 0
 Output: true
 Explanation: There is a cycle in the linked list, where tail connects to the first node.


 Example 3:

 Input: head = [1], pos = -1
 Output: false
 Explanation: There is no cycle in the linked list.

 */

// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func hasCycle(_ head: ListNode?) -> Bool {
    var slow = head
    var fast = head
    
    while fast?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
        
        if slow === fast { return true }
    }
    
    return false
}

// Test case
let a = ListNode(3)
let b = ListNode(2)
let c = ListNode(0)
let d = ListNode(-4)
a.next = b
b.next = c
c.next = d
d.next = b

hasCycle(a)

