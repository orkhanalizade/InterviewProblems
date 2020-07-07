/**
 This problem was recently asked by LinkedIn:
You are given a positive integer N which represents the number of steps in a staircase. 
You can either climb 1 or 2 steps at a time. 
Write a function that returns the number of unique ways to climb the stairs.
*/

// Recursive version
func steps(_ n: Int) -> Int {
  guard n != 1 else { return 1 }
  guard n != 2 else { return 2}

  return steps(n - 1) + steps(n - 2)
}

// Dynamic Programming
func steps(_ n: Int) -> Int {
    guard n != 1 else { return 1 }
    guard n != 2 else { return 2}

    var arr: [Int?] = Array(repeating: nil, count: n + 1)
    arr[1] = 1
    arr[2] = 2

    for i in 3...n {
        arr[i] = arr[i - 1]! + arr[i - 2]!
    }
    return arr[n]!
}

// Shorter version
func steps(_ n: Int) -> Int {
    guard n > 0 else { return 0 }
    var a = 0
    var b = 1

    for _ in 1..<n {
        let c = a + b
        a = b
        b = c
    }

    return a + b
}