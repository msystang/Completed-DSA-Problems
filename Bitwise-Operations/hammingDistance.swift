/*
 The Hamming distance between two integers is the number of positions at which the corresponding bits are different.

 Given two integers x and y, calculate the Hamming distance.

 Note:
 0 ≤ x, y < 231.

 Example:

 Input: x = 1, y = 4

 Output: 2

 Explanation:
 1   (0 0 0 1)
 4   (0 1 0 0)
        ↑   ↑

 The above arrows point to positions where the corresponding bits are different.
 */

/*
Notes:
^ <-- Returns the result of performing a bitwise XOR operation on the two given values
.nonzeroBitCount <-- The number of bits equal to 1 in this value’s binary representation
radix <-- base value for converting BinaryInteger to a String
& <-- Returns the result of performing a bitwise AND operation on the two given values
>> <-- Shifts unsigned integer one place to the right
*/


//func hammingDistance(_ x: Int, _ y: Int) -> Int {
//    return (x ^ y).nonzeroBitCount
//}

//func hammingDistance(_ x: Int, _ y: Int) -> Int {
//    let difference = x ^ y
//    let diffStr = String(difference, radix: 2, uppercase: false).filter { $0 == "1" }
//
//    return diffStr.count
//}

func hammingDistance(_ x: Int, _ y: Int) -> Int {
    var difference = x ^ y
    var counter = 0
    
    while difference > 0 {
        let output = difference & 1
        
        if output == 1 { counter += 1 }

        difference = difference >> 1
    }
    return counter
}

