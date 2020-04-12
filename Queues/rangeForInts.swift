/*
 Range for Integers in Queue
 
 Write a function that takes in a Queue of Ints, returns the range (difference between the minimum and maximum).
 
 Input:
 BACK 4 2 9 6 5 FRONT
 
 Output:
 7 (Because 9 -2 = 7)
 */

// Provided definition of a Queue
public struct Queue<T> {
    private var array = [T?]()
    private var head = 0

    public var isEmpty: Bool {
        return count == 0
    }

    public var count: Int {
        return array.count - head
    }

    public mutating func enqueue(_ element: T) {
        array.append(element)
    }

    public mutating func dequeue() -> T? {
        guard let element = array[guarded: head] else { return nil }
        array[head] = nil
        head += 1
        let percentage = Double(head)/Double(array.count)
        if array.count > 50 && percentage > 0.25 {
            array.removeFirst(head)
            head = 0
        }
        return element
    }

    public var front: T? {
        if isEmpty {
            return nil
        } else {
            return array[head]
        }
    }
}

extension Array {
    subscript(guarded idx: Int) -> Element? {
        guard (startIndex..<endIndex).contains(idx) else {
            return nil
        }
        return self[idx]
    }
}

// Using recursion
func rangeForInts(in queue: Queue<Int>, min: Int = Int.max, max: Int = Int.min) -> Int {
    var queue = queue
    var max = max
    var min = min

    guard !queue.isEmpty else { return max - min }

    let currentInt = queue.dequeue()!

    if currentInt > max {
        max = currentInt
    } else if currentInt < min {
        min = currentInt
    }

    return rangeForInts(in: queue, min: min, max: max)
}

// Brute force using while loop
// func rangeForInts(in queue: Queue<Int>) -> Int {
//     var queue = queue
//     var min = 0
//     var max = 0

//     guard !queue.isEmpty else { return 0 }
//     guard queue.count != 1 else { return queue.front! }

//     let firstInt = queue.dequeue()!
//     let secondInt = queue.dequeue()!

//     if firstInt < secondInt {
//         min = firstInt
//         max = secondInt
//     } else {
//         min = secondInt
//         max = firstInt
//     }

//     while !queue.isEmpty {
//         let currentInt = queue.dequeue()!

//         if currentInt < min {
//             min = currentInt
//         } else if currentInt > max {
//             max = currentInt
//         }
//     }
//     return max - min
// }

var myQueue = Queue<Int>()

myQueue.enqueue(5)
myQueue.enqueue(6)
myQueue.enqueue(9)
myQueue.enqueue(2)
myQueue.enqueue(4)

rangeForInts(in: myQueue)
