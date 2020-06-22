/**
This problem was recently asked by Facebook:
You are given a list of numbers, and a target number k. Return whether or not there are two numbers in the list that add up to k.

Example:
Given [4, 7, 1 , -3, 2] and k = 5, 
return true since 4 + 1 = 5.
*/

var dict = [Int: Bool]()
let k = 5
let array = [4,7,1,-3,2]

func areThere() -> Bool {
  for n in array {
    let value = k - n

    if dict[value] == nil {
      dict[n] = true
    } else { 
      return true
    }
  }
  return false
}

print(areThere())