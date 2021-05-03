//
//  Quicksort.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/24.
//

import Foundation

// Goal: Sort an array from low to high (or high to low).

func quicksort<T: Comparable>(_ a: [T]) -> [T] {
    guard a.count > 1 else { return a }
    
    let pivot = a[a.count / 2]
    let less = a.filter { $0 < pivot }
    let equal = a.filter { $0 == pivot }
    let greater = a.filter { $0 > pivot }

    return quicksort(less) + equal + quicksort(greater)
}

// This version isn't very quick. Because we filtered the same array three times.


