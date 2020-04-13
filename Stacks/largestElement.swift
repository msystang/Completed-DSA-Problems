/*
  Find the largest integer in a Stack of Ints
*/

struct Stack<T> {
  private var arr = Array<T>()
    
  mutating func pop() -> T? {
    return arr.popLast()
  }
    
  mutating func push(element: T) {
    arr.append(element)
  }
    
  func peek() -> T? {
    guard arr.count > 0 else {
      return nil
    }
    return arr[arr.count - 1]
  }
    
  func isEmpty() -> Bool {
    return arr.count == 0
  }
}

func largestElement(in stack: Stack<Int>) -> Int {
  var stack = stack
  var largestValue: Int = 0
    
  while !stack.isEmpty() {
    guard let currentValue = stack.pop() else { return largestValue }
  
    if currentValue > largestValue {
      largestValue = currentValue
    }
  }
  
  return largestValue
}
