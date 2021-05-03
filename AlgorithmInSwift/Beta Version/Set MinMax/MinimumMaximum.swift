//
//  MinimumMaximum.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/23.
//

import Foundation

// Goal: Find the minimum/maximum object in an unsorted array.

func minimumMaximum<T: Comparable>(_ array: [T]) -> (minimum: T, maximum: T)? {
    guard var minimum = array.first else { return nil }
    var maximum = minimum
    
    let start = array.count % 2
    for i in stride(from: start, to: array.count, by: 2) {
        let pair = (array[i], array[i+1])
        
        if pair.0 > pair.1 {
            if pair.0 > maximum {
                maximum = pair.0
            }
            if pair.1 < minimum {
                minimum = pair.1
            }
        } else {
            if pair.1 > maximum {
                maximum = pair.1
            }
            if pair.0 < minimum {
                minimum = pair.0
            }
        }
    }
    return (minimum, maximum)
}

// Performance: O(n), because min/max have to compare with each object in the array
