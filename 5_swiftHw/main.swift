//
//  main.swift
//  5_swiftHw
//
//  Created by Ali Gaev on 10.07.2026.
//

import Foundation

//1

let array = [1, 2, 3]

func sum(array: [Int]) -> Int {
    var sum = 0
    for i in array {
        sum += i
    }
    return sum
}

print(sum(array: array))

//2

let array2 = [1, 2, 3, 4, 5, 6, 77]

func howManyEvennumbers(array: [Int]) -> Int {
    var count = 0
    for i in array {
        if i % 2 == 0 {
            count += 1
        }
    }
    
    return count
}

print(howManyEvennumbers(array: array2))

//3

let arrayOfStrings = ["lol", "man", "yusup", "cheesecake"]

func howManySymbols(array: [String]) -> [String: Int] {
    var dict: [String: Int] = [:]
    for word in array {
        dict[word] = word.count
    }
    return dict
}

print(howManySymbols(array: arrayOfStrings))

//1

let arrayOfInts = [1, 1, 2, 2, 2, 6, 6, 8, 9, 9, 9]

func howManyTimes(array: [Int]) -> [Int: Int] {
    var result: [Int: Int] = [:]
    for i in array {
        result[i, default: 0] += 1
    }
    
    return result
}

print(howManyTimes(array: arrayOfInts))

//2

let arrayStr1 = ["a", "b", "c"]
let arrayStr2 = ["b", "c", "d"]

func withoutDuplicates(array1: [String], array2: [String]) -> [String] {
    
    
    let set1 = Set(array1)
    let set2 = Set(array2)
    
    let resultSet = set1.union(set2)
    
    return Array(resultSet)
}

print(withoutDuplicates(array1: arrayStr1, array2: arrayStr2))


//3

let arrayStr = ["apple", "banana", "apple", "orange"]

func mostCommon(array: [String]) -> String {
    
    var frequencies: [String: Int] = [:]

    for vote in array {
        frequencies[vote, default: 0] += 1
    }

    var winner = ""
    var maxCount = 0

    for (candidate, count) in frequencies {
        if count > maxCount {
            winner = candidate
            maxCount = count
        }
    }
    return winner
}

print(mostCommon(array: arrayStr))



