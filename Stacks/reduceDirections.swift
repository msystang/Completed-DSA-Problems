/*
 Reduce Directions
 
 You found directions to hidden treasure only written in words. The possible directions are “North”, “South”, “West”, “East”.
 
 “North” and “South” are opposite directions, as are “East” and “West”. Going one direction and coming back in the opposite direction means you have ultimately gone nowhere. Someone else has the directions to the treasure, and you need to get to it first. Since the directions are long, you decide to write a program to figure out the fastest and most direct route to the treasure.
 
 Write a function that will take a list of strings, and return a list of strings with the unneeded directions removed.
 
 Example inputs and outputs:
 [“North”, “East”, “West”, “West”, “North”, “South”, “South”]
 will reduce to
 [“North”, “West”, “South"]
 
 [“North”, “East”, “West”, “South”, “West”, “South”, “North”, “West”]
 will reduce to
 [“West”, “West”].
 
 Note that not all paths are reducible. The path [“East”, “North”, “West”, “South” ] is not reducible.
 */

class Stack<T> {
    private var array = [T]()
    
    func push(newElement: T) {
        array.append(newElement)
    }
    
    func pop() -> T? {
        if array.isEmpty {
            return nil
        } else {
            return array.removeLast()
        }
    }
    
    func peek() -> T? {
        return array.last
    }
    
    func isEmpty() -> Bool {
        return array.isEmpty
    }
}

func reduceDirections(from directions: [String]) -> [String] {
    let opposingDirections: [String:String] = ["North":"South","West":"East","South":"North","East":"West"]
    let stack = Stack<String>()
    var reducedDirections = [String]()
    
    for direction in directions {
        if stack.peek() == opposingDirections[direction] {
            stack.pop()
        } else {
            stack.push(newElement: direction)
        }
    }
    
    while !stack.isEmpty() {
        reducedDirections.append(stack.pop()!)
    }
    
    return reducedDirections.reversed()
}

reduceDirections(from: ["East", "North", "West", "South"])
reduceDirections(from: ["North", "East", "West", "West", "North", "South", "South"])
reduceDirections(from: ["North", "East", "West", "South", "West", "South", "North", "West"])
