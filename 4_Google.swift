/**
This problem was recently asked by Google:
Given a list of numbers with only 3 unique numbers (1, 2, 3), sort the list in O(n) time.

Example:
Input: [3, 3, 2, 1, 3, 2, 1]
Output: [1, 1, 2, 2, 3, 3, 3]
*/

// Radix sort
var array = [3, 3, 2, 1, 3, 2, 1]

let base = 10
var done = false
var digits = 1

while !done {
    var buckets: [[Int]] = .init(repeating: [], count: base)
    done = true

    for number in array {
        let remainingPart = number / digits
        let index = remainingPart % base

        buckets[index].append(number)

        if remainingPart > 0 {
            done = false
        }
    }

    digits *= base
    array = buckets.flatMap { $0 }
}

print(array)