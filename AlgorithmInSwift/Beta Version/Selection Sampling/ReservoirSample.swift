//
//  ReservoirSample.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/24.
//

import Foundation

// Alternative algotithm, called "reservoir sampling"
func reservoirSample<T>(from a: [T], count k: Int) -> [T] {
    precondition(a.count >= k)
    
    var result = [T]()  // 1: Reservoir
    for i in 0..<k {
        result.append(a[i])
    }
    
    for i in k..<a.count {  // 2: Randomly replace elements
        let j = Int.random(in: 0...i)
        if j < k {
            result[j] = a[i]
        }
    }
    return result
}

// Perfomance: O(n)
