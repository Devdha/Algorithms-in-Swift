//
//  CountOccurrences.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/22.
//

import Foundation

// Goal: Count how often a certain value appears in an array.

func countOccurences<T: Comparable>(of key: T, in array: [T]) -> Int {
    var leftBoundary: Int {
        var low = 0
        var high = array.count
        while low < high {
            let midIndex = low + (high - low) / 2
            if array[midIndex] < key {
                low = midIndex + 1
            } else {
                high = midIndex
            }
        }
        return low
    }
    
    var rightBoundary: Int {
        var low = 0
        var high = array.count
        while low < high {
            let midIndex = low + (high - low) / 2
            if array[midIndex] > key {
                high = midIndex
            } else {
                low = midIndex + 1
            }
        }
        return low
    }
    return rightBoundary - leftBoundary
}
