//
//  KthLargest.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/23.
//

import Foundation

// Goal: finds the k-th largest element in the array.
// The naive solution

func kthLargest(a: [Int], k: Int) -> Int? {
    let len = a.count
    if k > 0 && k <= len {
        let sorted = a.sorted()
        return sorted[len - k]
    } else {
        return nil
    }
}
