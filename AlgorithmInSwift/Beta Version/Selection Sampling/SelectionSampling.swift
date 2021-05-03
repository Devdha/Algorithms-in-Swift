//
//  SelectionSampling.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/24.
//

import Foundation

// Goal: Select k items at random from a collection of n items.

func select<T>(from array: [T], count k: Int) -> [T] {
    var a = array
    for i in 0..<k {
        let r = Int.random(in: i..<a.count)
        if i != r {
            a.swapAt(i, r)
        }
    }
    return Array(a[0..<k])
}

// Performance: O(k)



