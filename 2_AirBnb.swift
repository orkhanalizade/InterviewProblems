/**
This problem was recently asked by AirBNB:
Given a sorted array, A, with possibly duplicated elements, find the indices of the first and last occurrences of a target element, x. 
Return -1 if the target is not found.
*/

let givenArray = [1,3,3,5,7,8,9,9,9,15]
let target = 9

var firstIndex = -1
var lastIndex = -1

for (index, num) in givenArray.enumerated() {
    if num == target {
        firstIndex == -1 ? (firstIndex = index) : (lastIndex = index)
    }
}

print(firstIndex, lastIndex)