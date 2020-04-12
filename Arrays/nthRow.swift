/*
Nth Row of Pascal's Triangle

Given a non-negative integer n, write a function that returns the nth rows of Pascal's triangle.  Use a recursive strategy to write this function.
  

 Input: 5
 Output:
 [
      [1],
     [1,1],
    [1,2,1],
   [1,3,3,1],
  [1,4,6,4,1] <--
 ]
 */


func nthRow(n: Int) -> [Int] {
    guard n > 0 else { return [0] }
    guard n != 1 else { return [1] }

    var arr = [Int]()

    for int in 1...n {
        if int == 1 || int == n {
            arr.append(1)
        } else {
            arr.append(firstNRows(n: n-1)[int-1] + firstNRows(n: n-1)[int-2])
        }
    }
    return arr
}

nthRow(n: 5)
