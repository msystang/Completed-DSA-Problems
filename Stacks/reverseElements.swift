/*
 Reverse Elements in a Stack
 
 Reverse a Stack without using an Array.
*/

//Sample input:
/*
 4
 2
 9
 3
 */

//Sample output:
/*
 3
 9
 2
 4
 */

func reverseElements<T>(in stack: Stack<T>) -> Stack<T> {
    var stack = stack
    var reversedStack = Stack<T>()
    
    while !stack.isEmpty() {
        if let currentValue = stack.pop() {
            reversedStack.push(element: currentValue)
        }
    }
    
    return reversedStack
}

var myStack = Stack<Int>()
myStack.push(element: 4)
myStack.push(element: 2)
myStack.push(element: 9)
myStack.push(element: 3)

print(reverseElements(in: myStack))
