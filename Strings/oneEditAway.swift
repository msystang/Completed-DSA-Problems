/*
One Edit Away

 There are three types of edits that can be performed on strings: insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away.
 Example:
 pale, ple -> True
 pales, pale -> True
 pale, bale -> True
 pale, bake -> False
 */

func oneEditAway(str1: String, str2: String) -> Bool {
    var counter = 0
    let arr1 = Array(str1)
    let arr2 = Array(str2)
    let set1 = Set(str1)
    let set2 = Set (str2)
    
    //Insert
    if str1.count == str2.count - 1 {
        if set1.count == set2.count - 1 {
            if set1.isSubset(of: set2) { return true }
        }
    }
    
    //Remove
    if str1.count == str2.count + 1 {
         if set1.count == set2.count + 1 { 
            if set2.isSubset(of: set1) { return true }
        }
    }
    
    //Replace
    if arr1.count == arr2.count {
        for i in 0..<arr1.count {
            if arr1[i] != arr2[i] {
                counter += 1
            }
        }
        if counter == 1 { return true }
    }
    
    return false
}

oneEditAway(str1: "pale", str2: "ple")
oneEditAway(str1: "pales", str2: "pale")
oneEditAway(str1: "pale", str2: "bale")
oneEditAway(str1: "pale", str2: "bake")
