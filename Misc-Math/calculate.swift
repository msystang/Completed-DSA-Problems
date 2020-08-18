/*
 Basic Calculator II - https://leetcode.com/problems/basic-calculator-ii/?fbclid=IwAR1obZqFME65QzLdtqGRIH7RxcJ6tURnJVGQtAcmau37kB4shykTLJ_76Xk
 
 Implement a basic calculator to evaluate a simple expression string.

 The expression string contains only non-negative integers, +, -, *, / operators and empty spaces . The integer division should truncate toward zero.

 Example 1:

 Input: "3+2*2"
 Output: 7
 Example 2:

 Input: " 3/2 "
 Output: 1
 Example 3:

 Input: " 3+5 / 2 "
 Output: 5
 Note:

 You may assume that the given expression is always valid.
 Do not use the eval built-in library function.
 */

func calculate(_ s: String) -> Int {
    var stack = [Int]()
    let arr = Array(s + "+")
    var op: Character = "+"
    var num = 0
    
    for char in arr {
        if isNumber(char: char) {
            num = num * 10 + Int(String(char))!
        } else if isOperator(char: char) {
            
            if op == "+" {
                stack.append(num)
            } else if op == "-" {
                stack.append(num * -1)
            } else if op == "*" {
                let temp = stack.removeLast()
                stack.append(temp * num)
            } else if op == "/" {
                let temp = stack.removeLast()
                stack.append(temp / num)
            }
                num = 0
                op = char
        }
    }
    
    return stack.reduce(0, +)
}

func isNumber(char: Character) -> Bool {
    return (Character("0")...Character("9")).contains(char)
}

func isOperator(char: Character) -> Bool {
    return char == "+" || char == "-" || char == "*" || char == "/"
}
