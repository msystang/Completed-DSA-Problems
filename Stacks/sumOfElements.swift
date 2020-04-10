/*
 Sum of Elements in Stack
 
 Write a function that takes a Stack of Ints as input, and returns the sum of each element.
 
 Input:
 3
 4
 8
 1
 4
 
 Output: 20
 */

struct Stack<T> {
    mutating func push(_ newElement: T) {
        arr.append(newElement)
    }
    mutating func pop() -> T? {
        return arr.popLast()
    }
    func peek() -> T? {
        return arr.last
    }
    var isEmpty: Bool {
        return arr.isEmpty
    }
    private var arr: [T] = []
}

// Using while-loop
//func sumOfElements(in stack: Stack<Int>) -> Int {
//    var stack = stack
//    var sum = 0
//
//    guard !stack.isEmpty else { return 0 }
//
//    while !stack.isEmpty {
//        sum += stack.pop()!
//    }
//    return sum
//}

// Using recusion
func sumOfElements(in stack: Stack<Int>) -> Int {
    var stack = stack
    var sum = 0

    guard stack.peek() != nil else { return sum }

    sum += stack.pop()!

    return sum + sumOfElements(in: stack)
}


var myStack = Stack<Int>()
myStack.push(3)
myStack.push(4)
myStack.push(8)
myStack.push(1)
myStack.push(4)

sumOfElements(in: myStack)
