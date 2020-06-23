/**
This problem was recently asked by Apple:
Given an integer k and a binary search tree, find the floor (less than or equal to) of k, and the ceiling (larger than or equal to) of k. 
If either does not exist, then print them as None.
*/

class Tree<T: Comparable> {
    var value: T
    var left: Tree?
    var right: Tree?

    var floor: T?
    var ceiling: T?

    init(value: T, left: Tree?, right: Tree?) {
        self.value = value
        self.left = left
        self.right = right
    }

    func findCeilingFloor(of value: T, in t: Tree?) -> (floor: T?, ceiling: T?) {
        guard let tree = t else {
             return (floor: floor, ceiling: ceiling)
        }

        if value <= tree.value {
            ceiling = tree.value
            findCeilingFloor(of: value, in: tree.left)
        }
        if value >= tree.value {
            floor = tree.value
            findCeilingFloor(of: value, in: tree.right)
        }

        return (floor: floor, ceiling: ceiling)
    }
}