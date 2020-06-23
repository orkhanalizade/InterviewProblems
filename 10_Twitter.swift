/**
This problem was recently asked by Twitter:
Implement a class for a stack that supports all the regular functions (push, pop) and an additional function of max() 
which returns the maximum element in the stack (return None if the stack is empty). Each method should run in constant time.
*/

class Stack {
    private var array: [Int] = []
    var max: Int?

    func push(element: Int) {
        var appendElement = element

        if array.isEmpty {
            max = appendElement
        } else if element > (max ?? 0) {
            appendElement = 2 * element - (max ?? 0)
            max = element
        }
        array.append(appendElement)
    }

    func pop() {
        if let popElement = array.popLast(), popElement > (max ?? 0) {
            max = 2 * (max ?? 1) - popElement
        }
    }

    func maximum() -> Int? {
        return max
    }
}