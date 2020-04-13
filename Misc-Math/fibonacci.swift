/*
  Fibonacci Sequence
  
  Create a function that returns the nth integer in the Fibonacci sequence.
*/

// Using recursion
//func fibonacci(at index: Int) -> Int {
//    guard index > 1 else { return index }
//
//    return fibonacci(at: index - 1) + fibonacci(at: index - 2)
//}


// Using dynamic programming
var fibNums = [Int:Int]()

func fibonacci(at index: Int) -> Int {
    if let fib = fibNums[index] {
         return fib
    }
    
    guard index > 1 else {
        fibNums[index] = index
        return index
    }

    let fib = fibonacci(at: index - 1) + fibonacci(at: index - 2)
    fibNums[index] = fib

    return fib
}

fibonacci(at: 10)
