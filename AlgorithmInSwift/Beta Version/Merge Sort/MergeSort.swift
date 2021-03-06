//
//  MergeSort.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/18.
//

import Foundation

// Top-down 방식(작은 요소로 모두 나눈 후 합치는 방식)

func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array}  // 1
    
    let middleIndex = array.count / 2           // 2
    
    let leftArray = mergeSort(Array(array[0..<middleIndex]))  // 3
    
    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))  // 4
    return merge(leftPile: leftArray, rightPile: rightArray)    // 5
}

func merge(leftPile: [Int], rightPile: [Int]) -> [Int] {
    // 1
    var leftIndex = 0
    var rightIndex = 0
    
    // 2
    var orderedPile = [Int]()
    orderedPile.reserveCapacity(leftPile.count + rightPile.count)
    
    // 3
    while leftIndex < leftPile.count && rightIndex < rightPile.count {
        if leftPile[leftIndex] < rightPile[rightIndex] {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
        } else if leftPile[leftIndex] > rightPile[rightIndex] {
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        } else {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        }
    }
    
    // 4
    while leftIndex < leftPile.count {
        orderedPile.append(leftPile[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < rightPile.count {
        orderedPile.append(rightPile[rightIndex])
        rightIndex += 1
    }
    
    return orderedPile
}
