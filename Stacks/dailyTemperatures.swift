/*
Daily Temperatures - https://leetcode.com/problems/daily-temperatures/

Given a list of daily temperatures T, return a list such that, for each day in the input, tells you how many days you would have to wait until a warmer temperature. If there is no future day for which this is possible, put 0 instead.

For example, given the list of temperatures T = [73, 74, 75, 71, 69, 72, 76, 73], your output should be [1, 1, 4, 2, 1, 1, 0, 0].

Note: The length of temperatures will be in the range [1, 30000]. Each temperature will be an integer in the range [30, 100].
*/

let T = [73, 74, 75, 71, 69, 72, 76, 73]

func dailyTemperatures(_ T: [Int]) -> [Int] {
    var stack = [Int]()
    var result = [Int](repeating: 0, count: T.count)
    
    for i in 0...T.count - 1 {
        while !stack.isEmpty && T[stack.last!] < T[i] {
            
            let day = stack.removeLast()
            result[day] = i - day
        }
        
        stack.append(i)
    }
    
    return result
}

dailyTemperatures(T)
