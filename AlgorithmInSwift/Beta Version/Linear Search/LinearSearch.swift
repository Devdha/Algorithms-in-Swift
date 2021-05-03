//
//  LinearSearch.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/22.
//

import Foundation

// Goal: Find a particular value in an array.

// Iterate over all the objects in the array and compare each of elements to the object I'm looking for

func linearSearch<T: Equatable>(_ array: [T], _ object: T) -> Int? {
    for (index, obj) in array.enumerated() where obj == object {
        return index
    }
    return nil
}

// Performance of Linear Search is O(n)
// because it has to iterate each object until find the object I'm looking for
