/*
Print Each Node

Write a function that takes in a Linked List comprised of Node objects, and prints out the value of each Node in the format below.

4 -> 9 -> 2 -> 3 
*/

class Node<T> {
  var next: Node?
  let val: T

  init(val: T) {
    self.val = val
  }
}

let node4 = Node(val: 4)
let node9 = Node(val: 9)
let node2 = Node(val: 2)
let node3 = Node(val: 3)

node4.next = node9
node9.next = node2
node2.next = node3

func printEachNode(_ node: Node<Int>?, _ onVisit: (Node<Int>) -> Void) {
    guard let node = node else { return }
    
    onVisit(node)
    printEachNode(node.next, onVisit)
}

printEachNode(node4) { print($0.val) }
