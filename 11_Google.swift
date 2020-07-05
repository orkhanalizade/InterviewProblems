/**
This problem was recently asked by Google:
There are n people lined up, and each have a height represented as an integer. 
A murder has happened right in front of them, and only people who are taller than everyone in front of them are able to see what has happened. 
How many witnesses are there?

Example:
Input: [3, 6, 3, 4, 1]  
Output: 3
*/

var c = 1
var max = nums[nums.count - 1]
for i in stride(from: nums.count - 2, to: 0, by: -1) {
    if nums[i] > max {
        max = nums[i]
        c += 1
    }
}
print(c)