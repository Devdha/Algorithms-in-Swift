//
//  MergeSortBottomUp.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/18.
//

import Foundation

// Bottom-up 방식(나누는 단계를 지나치고 바로 합치는 방식)

func mergeSortBottomUp<T>(_ a: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
    let n = a.count
    
    var z = [a, a]      // 1
    var d = 0
    // merge당 하나의 array를 할당하는 것은 비효율적이라, 2개의 array를 만들어 놓고 쓰는데
    // z[d](0)는 읽기 전용, z[1-d](1)는 쓰기 전용으로 사용할 수 있다. 이를 double-buffering이라 부른다.
    
    var width = 1
    while width < n {   // 2
        // 한 개 Pile의 사이즈는 width이다.
        // 처음 시작은 1로 해서 merge가 실행될 때 마다 2배 증가한다.(while문 마지막에 width *= 2)
        
        var i = 0
        while i < n {  // 3
            
            var j = i
            var l = i
            var r = i + width
            
            let lmax = min(l + width, n)
            let rmax = min(r + width, n)
            
            while l < lmax && r < rmax {                // 4
                if isOrderedBefore(z[d][l], z[d][r]) {
                    z[1 - d][j] = z[d][l]
                    l += 1
                } else {
                    z[1 - d][j] = z[d][r]
                    r += 1
                }
                j += 1
            }
            while l < lmax {
                z[1 - d][j] = z[d][l]
                j += 1
                l += 1
            }
            while r < rmax {
                z[1 - d][j] = z[d][r]
                j += 1
                r += 1
            }
            
            i += width * 2
        }
        
        width *= 2
        d = 1 - d // 5
    
    }
    return z[d]
}
