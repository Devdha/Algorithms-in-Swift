//
//  Minimum.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/23.
//

import Foundation

// Goal: Find the minimum/maximum object in an unsorted array.

func minimum<T: Comparable>(_ array: [T]) -> T? {
    guard var minimum = array.first else { return nil }
    
    for element in array.dropFirst() {
        minimum = minimum > element ? element : minimum
    }
    return minimum
}
