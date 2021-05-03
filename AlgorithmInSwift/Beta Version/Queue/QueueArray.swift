//
//  QueueArray.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/14.
//

import Foundation

public struct QueueArray<T>: Queue {
    private var array: [T] = []
    public var count = 0
    public init() {}
    
    public var isEmpty: Bool {
        return array.isEmpty // 1
    }
    
    public var peek: T? {
        return array.first // 2
    }
    
    public mutating func enqueue(_ element: T) -> Bool {
        array.append(element)
        count += 1
        return true
    }
    
    public mutating func dequeue() -> T? {
        count -= 1
        return isEmpty ? nil : array.removeFirst()
    }
}

extension QueueArray: CustomStringConvertible {
    public var description: String {
        return array.description
    }
}
