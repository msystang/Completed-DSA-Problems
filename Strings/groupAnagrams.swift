/*
 Group Anagrams
 
 Given an array of strings, group anagrams together.

 Example:

 Input: ["eat", "tea", "tan", "ate", "nat", "bat"],
 Output:
 [
   ["ate","eat","tea"],
   ["nat","tan"],
   ["bat"]
 ]
 Note:

 All inputs will be in lowercase.
 The order of your output does not matter.
 */

// Time is O(n)
func groupAnagrams(_ strs: [String]) -> [[String]] {
    var dict = [String:[String]]()
    var result = [[String]]()
    
    for word in strs {
        let baseWord = String(word.sorted { $0 < $1 })
        
        if dict[baseWord] == nil {
            dict[baseWord] = [word]
        } else {
            dict[baseWord]?.append(word)
        }
    }
    
    for words in dict.values {
        result.append(words)
    }
    
    return result
}

// Todo: Use hash func by taking product of prime numbers
