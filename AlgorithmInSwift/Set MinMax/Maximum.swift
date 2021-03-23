//
//  Maximum.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/23.
//

import Foundation

// Goal: Find the minimum/maximum object in an unsorted array.

func maximum<T: Comparable>(_ array: [T]) -> T? {
    guard var maximum = array.first else { return nil }
    
    for element in array {
        maximum = maximum < element ? element : maximum
    }
    
    return maximum
}
