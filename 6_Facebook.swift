/**
This problem was recently asked by Facebook:
Given a list of numbers, where every number shows up twice except for one number, find that one number.

Example:
Input: [4, 3, 2, 4, 1, 3, 2]
Output: 1
*/

var array = [4, 3, 2, 4, 1, 3, 2]
let result = array.reduce(0, { $0 ^ $1 })
print(result)