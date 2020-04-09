/*
 Partition List

 Given a linked list and a value x, partition it such that all nodes less than x come before nodes greater than or equal to x.

 You should preserve the original relative order of the nodes in each of the two partitions.

 Example:

 Input: head = 1->4->3->2->5->2, x = 3
 Output: 1->2->2->4->3->5
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
    let lowerList = ListNode(0)
    let higherList = ListNode(0)

    var lastLower = lowerList
    var lastHigher = higherList

    var head = head

    while head != nil {
        if head!.val < x {
            lastLower.next = head
            lastLower = head!
        } else {
            lastHigher.next = head
            lastHigher = head!
        }

        head = head?.next
    }

    lastHigher.next = nil
    lastLower.next = higherList.next    // Ignores the initial dummy 0 node

    return lowerList.next               // Ignores the initial dummy 0 node
}
