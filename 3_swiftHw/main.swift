//
//  main.swift
//  3_swiftHw
//
//  Created by Ali Gaev on 25.06.2026.
//

import Foundation

//1

var heights: [Double] = [178, 188, 175, 180, 185]
for height in heights {
    print(height)
}
//2

heights.append(168)
heights.insert(184, at: 0)

print(heights)

//3

let last = heights.removeLast()
print(last)

//4

if let first = heights.first, let last = heights.last {
    print(first, last)
}

//5

var sumOfElements: Double = 0
for element in heights {
    sumOfElements += element
}
print(sumOfElements)
var average: Double = sumOfElements / Double(heights.count)
print(average)

//6
let isContains = heights.contains(10)

if isContains {
    print("theres a 10")
} else {
    print("no 10")
}

//7

let pcs = heights.count
print(pcs)
let sortedHeights = heights.sorted()
print(sortedHeights)

//8
print(heights)
heights[2] = 189
print(heights)
//another one
//1

let fruits = ["banana", "orange", "apple", "kiwi"]

let isApple = fruits.contains("apple")

if isApple {
    print("yes, there is an apple")
}

//2

let sortedFruits = fruits.sorted()
print(sortedFruits)

//3

for fruit in fruits {
    if fruit.count > 5 {
        print(fruit)
    }
}

//4

let someWord = "Swift"
let lowercasedWord = someWord.lowercased()

let reversedWord = String(lowercasedWord.reversed())


if lowercasedWord == reversedWord {
    print("yes, it is a palindrome")
} else {
    print("no, it is not a palindrome")
}

//5

var howManyTimes: Int = 0

for i in heights {
    if i == 175 {
        howManyTimes += 1
    }
}

print(howManyTimes)

//6

heights.removeAll { $0 < 180 }
print(heights)


//7

var sum: Double = 0

for i in heights {
    sum += i
}

print(sum)




