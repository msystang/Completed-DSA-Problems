/*
 Find Elements Appearing N or More Times
 
 Write a function that takes in an array of elements and returns only elements appearing n or more times.  Your solution must work in O(n) time.
 
 Input: [1,3,4,1,9,1,3,4,3,1,2], 3
 
 Output: [1,3]
 */


func elementsAppearingNOrMoreTimes(arr: [Int], n: Int) -> [Int] {
    var myDict = [Int : Int]()
    var results = [Int]()
    
    for i in arr {
        if myDict[i] != nil {
            myDict[i]! += 1
        } else {
            myDict[i] = 1
        }
    }
    
    for freq in myDict {
        if freq.value >= n {
            results.append(freq.key)
        }
    }
    return results
}

elementsAppearingNOrMoreTimes(arr: [1,3,4,1,9,1,3,4,3,1,2], n: 3)
