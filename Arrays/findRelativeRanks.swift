/*
 Relative Ranks - https://leetcode.com/problems/relative-ranks/

 Given scores of N athletes, find their relative ranks and the people with the top three highest scores, who will be awarded medals: "Gold Medal", "Silver Medal" and "Bronze Medal".

 Example 1:
 Input: [5, 4, 3, 2, 1]
 Output: ["Gold Medal", "Silver Medal", "Bronze Medal", "4", "5"]
 Explanation: The first three athletes got the top three highest scores, so they got "Gold Medal", "Silver Medal" and "Bronze Medal".
 For the left two athletes, you just need to output their relative ranks according to their scores.
 Note:
 N is a positive integer and won't exceed 10,000.
 All the scores of athletes are guaranteed to be unique.
 */


func findRelativeRanks(_ nums: [Int]) -> [String] {
    guard !nums.isEmpty else { return [] }
    
    let sorted = nums.sorted {$0 > $1}
    var dict = [Int:String]()
    
    
    for (i, n) in sorted.enumerated() {
        if i == 0 {
            dict[n] = "Gold Medal"
        } else if i == 1 {
            dict[n] = "Silver Medal"
        } else if i == 2 {
            dict[n] = "Bronze Medal"
        } else {
            dict[n] = "\(i + 1)"
        }
    }
    
    return nums.map {
        return dict[$0] ?? "N/A"
    }
}

findRelativeRanks([10,3,8,9,4]) // ["Gold Medal", "5", "Bronze Medal", "Silver Medal", "4"]
