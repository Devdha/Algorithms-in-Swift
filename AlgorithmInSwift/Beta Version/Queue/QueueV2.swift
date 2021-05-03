//
//  QueueV2.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/16.
//

import Foundation

// 기존의 QueueArray는 dequeue할 때 요소들을 한칸씩 앞으로 옮겨야 하기 때문에
// O(n) operation이 발생함.(런타임이 오래걸림)

// 그래서 dequeue 작업을 효과적으로 하기 위해서, Swift에서 지원하지 않는 큐를 만들어보자

public struct QueueV2<T> {
    private var array = [T?]()
    private var head = 0
    
    public var isEmpty: Bool {
        return count == 0
    }
    
    public var count: Int {
        return array.count - head
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        guard head < array.count, let element = array[head] else { return nil }
        
        array[head] = nil
        head += 1
        
        let percentage = Double(head)/Double(array.count)
        if array.count > 50 && percentage > 0.25 {
            array.removeFirst(head)
            head = 0
        }
        
        return element
        
    }
    
    public var front: T? {
        if isEmpty {
            return nil
        } else {
            return array[head]
        }
    }
}

extension QueueV2: CustomStringConvertible {
    public var description: String {
        return array.description
    }
}
