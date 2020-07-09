/**
This problem was recently asked by AirBNB:
Given a sorted array, A, with possibly duplicated elements, find the indices of the first and last occurrences of a target element, x. 
Return -1 if the target is not found.
*/

let givenArray = [1,3,3,5,7,8,9,9,9,15]
let target = 9

class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        let a = findLowerBound(in: nums, for: target)
        let b = findUpperBound(in: nums, for: target)

        return [a, b]
    }

    func findUpperBound(in nums: [Int], for target: Int) -> Int {
        var index = -1

        var lowerBound = 0
        var upperBound = nums.count - 1

        while lowerBound <= upperBound {
            let mid = lowerBound + (upperBound - lowerBound) / 2
            let guess = nums[mid]

            if guess == target {
                index = mid
            }

            if guess <= target {
                lowerBound = mid + 1
            } else {
                upperBound = mid - 1
            }
        }

        return index
    }

    func findLowerBound(in nums: [Int], for target: Int) -> Int {
        var index = -1

        var lowerBound = 0
        var upperBound = nums.count - 1

        while lowerBound <= upperBound {
            let mid = lowerBound + (upperBound - lowerBound) / 2
            let guess = nums[mid]

            if guess == target {
                index = mid
            }

            if guess >= target {
                upperBound = mid - 1
            } else {
                lowerBound = mid + 1
            }
        }

        return index
    }
}
