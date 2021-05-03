//
//  Tree.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/04/19.
//

import Foundation

public class TreeNode<T> {
    public var value: T
    public var children: [TreeNode] = []
    
    public init(_ value: T) {
        self.value = value
    }
    
    public func add(_ child: TreeNode) {
        children.append(child)
    }
}

extension TreeNode {
    public func depthFirstTraverse(visit: (TreeNode) -> Void) {
        visit(self)
        children.forEach {
            $0.depthFirstTraverse(visit: visit)
        }
    }
    
    public func levelOrderTraverse(visit: (TreeNode) -> Void) {
        visit(self)
        var queue = QueueArray<TreeNode>()
        children.forEach { queue.enqueue($0) }
        while let node = queue.dequeue() {
            visit(node)
            node.children.forEach { queue.enqueue($0) }
        }
    }
}

func printEachLevel<T>(for tree: TreeNode<T>) {
    var queue = QueueArray<TreeNode<T>>()
    var nodesLeftInCurrentLevel = 0
    queue.enqueue(tree)
    
    while !queue.isEmpty {
        nodesLeftInCurrentLevel = queue.count
        
        while nodesLeftInCurrentLevel > 0 {
            guard let node = queue.dequeue() else { break }
            print(node.value, terminator: " ")
            node.children.forEach { queue.enqueue($0) }
            nodesLeftInCurrentLevel -= 1
        }
        print()
    }
}
