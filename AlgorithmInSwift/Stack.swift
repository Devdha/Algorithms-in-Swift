//
//  Stack.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/13.
//

import Foundation

public struct Stack<Element> {
    
    private var storage: [Element] = []
    
    public init() { }
}

extension Stack: CustomStringConvertible {
    
    public var description: String {
        let topDivider = "----top----\n"
        let bottomDivider = "\n----------"
        
        let stackElements = storage
            .map { "\($0)" }
            .reversed()
            .joined(separator: "\n")
        return topDivider + stackElements + bottomDivider
    }
}

// MARK: - push and pop
extension Stack {
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        return storage.popLast()
    }
}

// MARK: - Non-essential operations
extension Stack {
    public func peek() -> Element? {
        return storage.last
    }
    
    public var isEmpty: Bool {
        return peek() == nil
    }
}

// MARK: - Convert array to stack / Initializable from an array literal
extension Stack: ExpressibleByArrayLiteral {
    public init(_ elements: [Element]) {
        storage = elements
    }
    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}
