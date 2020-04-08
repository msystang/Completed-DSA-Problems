/*
 Move Zeroes

 Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

 Example:

 Input: [0,1,0,3,12]
 Output: [1,3,12,0,0]
 Note:

 You must do this in-place without making a copy of the array.
 Minimize the total number of operations.
 */

func moveZeroes(_ nums: inout [Int]) {
  var arr = [Int]()
  var offset = 0
    
  for (i, v) in nums.enumerated() {
    if v == 0 {
      arr.append(i)
    }
  }
    
  for i in arr {
    nums.remove(at: i + offset)
    offset -= 1
    nums.append(0)
  }  
}
