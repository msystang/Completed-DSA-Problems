/*
Given 2 arrays, write a function that returns duplicate Integers in both arrays
*/

func returnDups(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
  var set1 = Set(arr1)
  var set2 = Set(arr2)

  return Array(set1.intersection(set2))
}

// Without using Set intersection method
// func returnDups(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
//   var set1 = Set(arr1)
//   var set2 = Set(arr2)
//   var result = Set<Int>()
// 
//   for i in set1 {
//     // Look up for sets is O(1), total time complexity for this func is O(n)
//     if set2.contains(i) {
//         result.insert(i)
//     }
//   }
//   return Array(result)
// }


