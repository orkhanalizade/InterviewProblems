/**
This problem was recently asked by Facebook:

Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

Example:
Input: [0,1,0,3,12]
Output: [1,3,12,0,0]
You must do this in-place without making a copy of the array.
Minimize the total number of operations.
*/

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var index = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                let pop = nums.remove(at: i)
                nums.insert(pop, at: index)
                index += 1
            }
        }
    }
}