//
//  InsertionSort.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/17.
//

import Foundation

func insertionSort(_ array: [Int]) -> [Int] {
    var sortedArray = array                 // 1
    for index in 1..<sortedArray.count {   // 2
        var currentIndex = index
        while currentIndex > 0 && sortedArray[currentIndex] < sortedArray[currentIndex - 1] {   // 3
            sortedArray.swapAt(currentIndex - 1, currentIndex)
            currentIndex -= 1
        }
    }
    return sortedArray
}
