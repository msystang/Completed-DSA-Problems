/*
 Remove Duplicates
 
 Write a function that removes nodes with duplicate Integer values from an unsorted linked lists
*/
 
class LLNode<Int> {
    let value:Int
    var next: LLNode<Int>?

    init(value: Int){
        self.value = value
    }
}

func removeDups(head: LLNode<Int>?) {
    var current = head
    var previous = head
    // Use a set here (values are hashable - constant look up when using .contains)
    var set = Set<Int>()

    while current != nil {
        if !set.contains(current!.value) {
            set.insert(current!.value)
            previous = current
        } else {
            previous!.next = current!.next
        }
        current = current!.next
    }
}

var a = LLNode(value: 0)
var b = LLNode(value: 1)
var c = LLNode(value: 2)
var d = LLNode(value: 3)
var e = LLNode(value: 1)
var f = LLNode(value: 0)


a.next = b
b.next = c
c.next = d
d.next = e
e.next = f


func printAllNodes(head: LLNode<Int>?) {
    var currentNode = head

    while currentNode != nil {
        print(currentNode!.value)
        currentNode = currentNode!.next
    }
}

printAllNodes(head: a)
print("")
removeDups(head: a)
printAllNodes(head: a)
