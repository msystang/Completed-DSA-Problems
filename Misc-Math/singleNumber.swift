/*
 Single Number
 
 Given a non-empty array of integers, every element appears twice except for one. Find that single one.
 
 Note:
 
 Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
 
 Example 1:
 
 Input: [2,2,1]
 Output: 1
 Example 2:
 
 Input: [4,1,2,1,2]
 Output: 4
 */
 
 
 func singleNumber(_ nums: [Int]) -> Int {
    var dict = [Int:Int]()
    
    for i in nums {
        dict[i] = (dict[i] ?? 0) + 1
        
        // Alternative syntax, where default value is assignd 0 if key is nil:
        // dict[i] = dict[i, default: 0] + 1 
    }
    
    for (k,v) in dict {
        if v == 1 { return k }
    }
    
    return 0
}
