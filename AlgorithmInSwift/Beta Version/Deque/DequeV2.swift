//
//  DequeV2.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/16.
//

import Foundation

// 일반적인 Array로 구현할 경우 enqueueFront()와 dequeue() 작업의 시간복잡도가 O(n)이 됨.

public struct DequeV2<T> {
    private var array: [T?]
    private var head: Int
    private var capacity: Int
    private var originalCapacity: Int
    
    public init(_ capacity: Int = 10) {
        self.capacity = max(capacity, 1)
        originalCapacity = self.capacity
        array = [T?](repeating: nil, count: capacity)
        head = capacity
    }
    
    public var isEmpty: Bool {
        return count == 0
    }
    
    public var count: Int {
        return array.count - head
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func enqueueFirst(_ element: T) {
        if head == 0 {
            capacity *= 2
            let emptySpace = [T?](repeating: nil, count: capacity)
            array.insert(contentsOf: emptySpace, at: 0)
            head = capacity
        }
        head -= 1
        array[head] = element
    }
    
    public mutating func dequeue() -> T? {
        guard head < array.count, let element = array[head] else { return nil }
        array[head] = nil
        head += 1
        
        if capacity >= originalCapacity && head >= capacity * 2 {
            let amountToRemove = capacity + capacity / 2
            array.removeFirst(amountToRemove)
            head -= amountToRemove
            capacity /= 2
        }
        return element
    }
    
    public mutating func dequeueLast() -> T? {
        return isEmpty ? nil : array.removeLast()
    }
    
    public func peekFront() -> T? {
        return isEmpty ? nil : array.first!
    }
    
    public func peekLast() -> T? {
        return isEmpty ? nil : array.last!
    }
}
