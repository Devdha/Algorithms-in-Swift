//
//  InsertionSortV3.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/17.
//

import Foundation

func insertionSortV3<T>(_ array: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
    var sortedArray = array
    for index in 1..<sortedArray.count {
        var currentIndex = index
        let temp = sortedArray[currentIndex]
        while currentIndex > 0 && isOrderedBefore(temp, sortedArray[currentIndex - 1]) {
            sortedArray[currentIndex] = sortedArray[currentIndex - 1]
            currentIndex -= 1
        }
        sortedArray[currentIndex] = temp
    }
    return sortedArray
}
