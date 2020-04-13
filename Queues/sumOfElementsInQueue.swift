/*
 Sum of Integers in Queue
 
 Find the sum of a queue of Ints
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

var myQueue = Queue<Int>()
myQueue.enqueue(9)
myQueue.enqueue(2)
myQueue.enqueue(30)
myQueue.enqueue(12)

// Using while-loop
func sumOfElements(in q: Queue<Int>) -> Int {
    var q = q
    var sum = 0
    
    guard !q.isEmpty else { return sum }
    
    while !q.isEmpty {
        if let current = q.dequeue() {
            sum += current
        }
    }
    return sum
}

// Using recursion
func sumOfElements(in q: Queue<Int>) -> Int {
    var q = q
    var sum = 0
    
    guard !q.isEmpty else { return sum }
    sum = q.dequeue()!
    
    return sum + sumOfElements(in: q)
}

sumOfElements(in: myQueue)
