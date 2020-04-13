/*
 Smallest Element in a Queue
 
 Find the smallest element in a queue
*/

class Node<Key> {
    let val: Key
    var next: Node?
    
    init(val: Key) {
        self.val = val
    }
}

struct Queue<T> {
    private var head: Node<T>?
    private var tail: Node<T>?
    
    var isEmpty: Bool {
        return head == nil
    }
    
    mutating func enqueue(_ newElement: T) {
        let newNode = Node(val: newElement)
        guard let tail = tail else {
            self.head = newNode
            self.tail = newNode
            return
        }
        tail.next = newNode
        self.tail = newNode
    }
    
    mutating func dequeue() -> T? {
        guard let oldHead = head else {
            return nil
        }
        self.head = oldHead.next
        return oldHead.val
    }
    
    func peek() -> T? {
        return self.head?.val
    }
}


func smallestElement<T: Comparable>(in q: Queue<T>) -> T? {
    var q = q
    var smallest = q.peek()
    
    guard !q.isEmpty else { return nil }
    
    while !q.isEmpty {
        if let current = q.dequeue() {
                if current < smallest! {
                    smallest = current
                }
            }
        }
    return smallest
}


var myQueue = Queue<Int>()
myQueue.enqueue(9)
myQueue.enqueue(2)
myQueue.enqueue(30)
myQueue.enqueue(12)

smallestElement(in: myQueue)
