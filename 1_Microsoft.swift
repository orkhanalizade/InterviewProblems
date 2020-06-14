/**
This problem was recently asked by Microsoft:
Given a string, find the length of the longest substring without repeating characters.
*/

let givenString = "abrkaabcdefghijjxxx"

var dict = [Character: Int]()
var counter = 0
var length = 0

for s in givenString {
    if dict[s] == nil {
        dict[s] = 1
        counter += 1
    } else {
        if length < counter {
            length = counter
        }
        
        counter = 1
        dict = [s: 1]
    }
}

print(length)