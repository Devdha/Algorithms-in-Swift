//
//  Deque.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/16.
//

import Foundation

public struct Deque<T> {
    private var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func enqueueFront(_ element: T) {
        array.insert(element, at: 0)
    }
    
    public mutating func dequeue() -> T? {
        return isEmpty ? nil : array.removeFirst()
    }
    
    public mutating func dequeueBack() -> T? {
        return isEmpty ? nil : array.removeLast()
    }
    
    public func peekFront() -> T? {
        return array.first
    }
    
    public func peekBack() -> T? {
        return array.last
    }
}
