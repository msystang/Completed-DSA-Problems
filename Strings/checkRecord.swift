/*
 Student Attendance Record I
 
 You are given a string representing an attendance record for a student. The record only contains the following three characters:
 'A' : Absent.
 'L' : Late.
 'P' : Present.
 A student could be rewarded if his attendance record doesn't contain more than one 'A' (absent) or more than two continuous 'L' (late).

 You need to return whether the student could be rewarded according to his attendance record.

 Example 1:
 Input: "PPALLP"
 Output: True
 Example 2:
 Input: "PPALLL"
 Output: False
 */

func checkRecord(_ s: String) -> Bool {
    var aCount = 0
    var lCount = 0
    
    for char in s {
        if char == "A" {
            aCount += 1
            if aCount > 1 { return false }
        }
        
        if char == "L" {
            lCount += 1
            if lCount > 2 { return false }
        } else {
            lCount = 0
        }
    }
    return true
}

// Using higher-order functions
// func checkRecord(_ s: String) -> Bool {
//     var test = s
    
//     test.removeAll { $0 == "A" }
    
//     return (s.count == test.count || test.count == s.count - 1) && s.components(separatedBy: "LLL").count == 1
    
// }
