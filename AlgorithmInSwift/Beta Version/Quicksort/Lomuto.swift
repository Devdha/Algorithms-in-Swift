//
//  PartitionLomuto.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/24.
//

import Foundation

func partitionLomuto<T: Comparable>(_ a: inout [T], low: Int, high: Int) -> Int {
        
    let pivot = a[high]
    
    var i = low
    for j in low..<high {
        if a[j] <= pivot {
            a.swapAt(i, j)
            i += 1
        }
    }
    
    a.swapAt(i, high)
    return i
}

func quicksortLomuto<T: Comparable>(_ a: inout [T], low: Int, high: Int) {
    if low < high {
        let p = partitionLomuto(&a, low: low, high: high)
        quicksortLomuto(&a, low: low, high: p - 1)
        quicksortLomuto(&a, low: p + 1, high: high)
    }
}
