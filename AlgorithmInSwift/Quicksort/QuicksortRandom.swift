//
//  QuicksortRandom.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/25.
//

import Foundation

// If I choose bad pivot.
// It performs badly, so we have to choose good pivot.
// and random helps it.

func quicksortRandom<T: Comparable>(_ a: inout [T], low: Int, high: Int) {
    if low < high {
        let pivotIndex = Int.random(in: low...high)
        
        a.swapAt(pivotIndex, high)
        
        let p = partitionLomuto(&a, low: low, high: high)
        quicksortRandom(&a, low: low, high: p - 1)
        quicksortRandom(&a, low: p + 1, high: high)
    }
}
