//
//  main.swift
//  4_swiftHw
//
//  Created by Ali Gaev on 07.07.2026.
//

//1

let numbers = [1, 2, 3, 2, 4, 1, 5]

let uniqueNumbers = Set(numbers)
print(uniqueNumbers)

//2

let a = [1, 2, 3, 4]
let b = [3, 4, 5, 6]


let intersection  = Set(a).intersection(Set(b))
print(intersection)

//3

let first: Set = [1, 2, 3, 4]
let second: Set = [3, 4, 5, 6]

let onlyInFirst = first.subtracting(second)
print(onlyInFirst)

//4

//let text = "Hello, world!"
//
//let uniqueCharacters = Set(text)
//print(uniqueCharacters)

//1

let capitals = ["Kazakhstan": "Astana", "France": "Paris", "Japan": "Tokyo"]
var reversedCapitals: [String: String] = [:]

for (country, capital) in capitals {
    reversedCapitals[capital] = country
}
print(reversedCapitals)


//2
//
//let words = ["apple", "banana", "avocado", "blueberry", "cherry", "apricot"]
//
//var groupedWords: [String: [String]] = [:]
//
//for word in words {
//    let firstLetter = String(word.first!)
//    groupedWords[firstLetter, default: []].append(word)
//}
//print(groupedWords)

//3

let text = "banana"

var letterCount: [String: Int] = [:]

for letter in text {
    let letter = String(letter)
    letterCount[letter, default: 0] += 1
}
print(letterCount)

//4

let votes = ["Alice", "Bob", "Alice", "Charlie", "Bob", "Alice"]

var voteCount: [String: Int] = [:]

for vote in votes {
    voteCount[vote, default: 0] += 1
}
print(voteCount)

var winner = ""
var maxVotes = 0

for (candidate, count) in voteCount {
    if count > maxVotes {
        winner = candidate
        maxVotes = count
    }
    
}
print(winner)

//5

let words = ["cat", "dog", "elephant", "bat", "apple"]
var dict: [Int: [String]] = [:]


for word in words {
    dict[word.count, default: []].append(word)
}

print(dict)

