//
//  UnionFind.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/25.
//

import Foundation

public struct UnionFind<T: Hashable> {
    private var index = [T: Int]()
    private var parent = [Int]()
    private var size = [Int]()
    
    public mutating func addSetWith(_ element: T) {
        index[element] = parent.count   // 1
        parent.append(parent.count)     // 2
        size.append(1)
    }
    
    public mutating func setOf(_ element: T) -> Int? {
        if let indexOfElement = index[element] {
            return setByIndex(indexOfElement)
        } else {
            return nil
        }
    }
    
    public mutating func setByIndex(_ index: Int) -> Int {
        if parent[index] == index { // 1
            return index
        } else {
            parent[index] = setByIndex(parent[index])   // 2
            return parent[index]    // 3
        }
    }
    
    public mutating func inSameSet(_ firstElement: T, and secondElement: T) -> Bool {
        if let firstSet = setOf(firstElement), let secondSet = setOf(secondElement) {
            return firstSet == secondSet
        } else {
            return false
        }
    }
    
    public mutating func unionSetsContaining(_ firstElement: T, and secondElement: T) {
        if let firstSet = setOf(firstElement), let secondSet = setOf(secondElement) {   // 1
            if firstSet != secondSet {
                if size[firstSet] < size[secondSet] {
                    parent[firstSet] = secondSet    // 4
                    size[secondSet] += size[firstSet]
                } else {
                    parent[secondSet] = firstSet
                    size[firstSet] += size[secondSet]
                }
            }
        }
    }
}


