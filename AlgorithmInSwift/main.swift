//
//  main.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/11.
//

import Foundation

// MARK: - Graph

let graph = AdjacencyList<String>()

let singapore = graph.createVertex(data: "Singapore")
let tokyo = graph.createVertex(data: "Tokyo")
let hongkong = graph.createVertex(data: "Hong Kong")
let detroit = graph.createVertex(data: "Detroit")
let sanFrancisco = graph.createVertex(data: "San Francisco")
let washingtonDC = graph.createVertex(data: "Washington DC")
let austinTexas = graph.createVertex(data: "Austin Texas")
let seattle = graph.createVertex(data: "Seattle")

graph.add(.undirected, from: singapore, to: hongkong, weight: 300)
graph.add(.undirected, from: singapore, to: tokyo, weight: 500)
graph.add(.undirected, from: hongkong, to: tokyo, weight: 250)
graph.add(.undirected, from: tokyo, to: detroit, weight: 450)
graph.add(.undirected, from: tokyo, to: washingtonDC, weight: 300)
graph.add(.undirected, from: hongkong, to: sanFrancisco, weight: 600)
graph.add(.undirected, from: detroit, to: austinTexas, weight: 50)
graph.add(.undirected, from: austinTexas, to: washingtonDC, weight: 292)
graph.add(.undirected, from: sanFrancisco, to: washingtonDC, weight: 337)
graph.add(.undirected, from: washingtonDC, to: seattle, weight: 277)
graph.add(.undirected, from: sanFrancisco, to: seattle, weight: 218)
graph.add(.undirected, from: austinTexas, to: sanFrancisco, weight: 297)

print(graph)


// MARK: - Tree

//let tree = TreeNode(15)
//
//let child1 = TreeNode(1)
//let child2 = TreeNode(17)
//let child3 = TreeNode(20)
//
//let leaf1 = TreeNode(1)
//let leaf2 = TreeNode(5)
//let leaf3 = TreeNode(0)
//let leaf4 = TreeNode(2)
//let leaf5 = TreeNode(5)
//let leaf6 = TreeNode(7)
//
//tree.add(child1)
//tree.add(child2)
//tree.add(child3)
//
//child1.add(leaf1)
//child1.add(leaf2)
//child1.add(leaf3)
//
//child2.add(leaf4)
//
//child3.add(leaf5)
//child3.add(leaf6)
//
//printEachLevel(for: tree)

// MARK: - Beta Version

// MARK: - Quicksort

//var list = [ 10, 0, 3, 9, 2, 14, 26, 27, 1, 5, 8, -1, 8 ]
//print(quicksort(list))
//
//// Lomuto's scheme
//let p = partitionLomuto(&list, low: 0, high: list.count - 1)
//print(list)
//quicksortLomuto(&list, low: 0, high: list.count - 1)
//print(list)
//
//// Hoare's scheme
//var list2 = [ 8, 0, 3, 9, 2, 14, 10, 27, 1, 5, 8, -1, 26 ]
//let h = partitionHoare(&list2, low: 0, high: list2.count - 1)
//print(list2)
//
//// Dutch Flag scheme
//var list3 = [10, 0, 3, 9, 2, 14, 8, 27, 1, 5, 8, -1, 26]
//partitionDutchFlag(&list3, low: 0, high: list3.count - 1, pivotIndex: 10)
//print(list3)
//quicksortDutchFlag(&list3, low: 0, high: list3.count - 1)
//print(list3)

// MARK: - Selection Sampling

//let array = [1, 2, 3, 4, 5, 6]
//
//print(select(from: array, count: 3))
//print(reservoirSample(from: array, count: 3))

// MARK: - k-th Largest

//let array = [7, 92, 23, 9, -1, 0, 11, 6]
//print(kthLargest(a: array, k: 4))   // 9
//
//print(randomizedSelect(array, order: 4))    // 9

// MARK: - Set Minimum, Maximum

//let array = [8, 3, 9, 4, 6]
//
//print(minimum(array))   // 3
//print(maximum(array))   // 9
//
//// In the Swift standard library
//print(array.min())  // 3
//print(array.max())  // 9
//
//let result = minimumMaximum(array)
//print(result?.minimum)  // 3
//print(result?.maximum)  // 9

// MARK: - Count Occurrences

//let a = [0, 1, 1, 3, 3, 3, 3, 6, 8, 10, 11, 11]
//
//print(countOccurences(of: 3, in: a))


// MARK: - Linear Search

//let array = [1, 2, 3]
//
//if let number: Int = linearSearch(array, 2) {
//    print(number)
//}

// MARK: - Binary Search Tree

//let tree = BinarySearchTree<Int>(value: 7)
//tree.insert(value: 2)
//tree.insert(value: 5)
//tree.insert(value: 10)
//tree.insert(value: 9)
//tree.insert(value: 1)
//print(tree)
//
//let tree2 = BinarySearchTree<Int>(array: [7, 2, 5, 10, 9, 1])
//print(tree2)
//
//print(tree.search(5))
//print(tree.search(2))
//print(tree.search(6))
//
//print(tree.searchInLoop(2))
//print(tree.searchInLoop(3))
//print(tree.searchInLoop(10))
//
//tree.traverseInOrder { print($0) }
//tree.traversPreOrder { print($0) }
//tree.traversPostOrder { print($0) }
//
//print(tree.toArray())

// MARK: - Boyer-Moore String Search

//let string = "Hello, World"
//print(string.index(of: "World")!)
//print(string.index(ofV2: "World")!)

// MARK: - Merge Sort

//let array = [2, 1, 5, 4, 9]
//print(mergeSortBottomUp(array, <))


// MARK: - Binary Search

//let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]
//
//if let key = binarySearch(numbers, key: 13, range: 0..<numbers.count) {
//    print(key)
//}
//if let key2 = binarySearchV2(numbers, key: 13) {
//    print(key2)
//}

// MARK: - Insertion sort

//let list = [10, -2, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26]
//print(insertionSort(list))
//print(insertionSortV2(list))
//print(insertionSortV3(list, <))
//print(insertionSortV3(list, >))
//
//let string = ["b", "a", "d", "c", "e"]
//print(insertionSortV3(string, <))


// MARK: - Deque(Deck)

//var deque = Deque<Int>()
//deque.enqueue(1)
//deque.enqueue(2)
//deque.enqueue(3)
//deque.enqueue(4)
//
//print(deque.dequeue()!)     // 1
//print(deque.dequeueBack()!) // 4
//
//deque.enqueueFront(5)
//print(deque.dequeue()!)     // 5


// MARK: - Queue

// Efficient QueueV2
//var q = QueueV2<String>()
//print(q)            // []
//q.enqueue("Ada")
//q.enqueue("Steve")
//q.enqueue("Tim")
//print(q)            // [Optional("Ada"), Optional("Steve"), Optional("Tim")]
//print(q.count)      // 3
//print(q.dequeue()!) // Ada
//print(q)            // [nil, Optional("Steve"), Optional("Tim")]
//print(q.count)      // 2
//print(q.dequeue()!) // Steve
//print(q)            // [nil, nil, Optional("Tim")]
//print(q.count)      // 1
//q.enqueue("Grace")
//print(q)            // [nil, nil, Optional("Tim"), Optional("Grace")]
//print(q.count)      // 2

// example of Leveraging arrays
//var queue = QueueArray<String>()
//queue.enqueue("Ray")
//queue.enqueue("Brian")
//queue.enqueue("Eric")
//queue.dequeue()
//print(queue)
//queue.peek


// MARK: - Stack

// example of Using a stack
//var stack = Stack<Int>()
//stack.push(1)
//stack.push(2)
//stack.push(3)
//stack.push(4)
//
//print(stack)
//
//if let poppedElement = stack.pop() {
//    assert(4 == poppedElement)
//    print("Popped: \(poppedElement)")
//}


// example of Initailizing a stack from an array
//let array = ["A", "B", "C", "D"]
//var stack = Stack(array)
//print(stack)
//stack.pop()


// example of Initailizing a stack from an array literal
//var stack: Stack = [1.0, 2.0, 3.0, 4.0]
//print(stack)
//stack.pop()


// MARK: - Linked List

// example of push
//var list = LinkedList<Int>()
//list.push(3)
//list.push(2)
//list.push(1)
//
//print(list)


// example of append
//var list = LinkedList<Int>()
//list.append(1)
//list.append(2)
//list.append(3)
//
//print(list)


// example of insert
//var list = LinkedList<Int>()
//list.push(3)
//list.push(2)
//list.push(1)
//
//print("Before inserting: \(list)")
//var middleNode = list.node(at: 1)!
//for _ in 1...4 {
//    middleNode = list.insert(-1, after: middleNode)
//}
//print("After inserting: \(list)")


// example of pop
//var list = LinkedList<Int>()
//list.push(3)
//list.push(2)
//list.push(1)
//
//print("Before popping list: \(list)")
//let poppedValue = list.pop()
//print("After popping list: \(list)")
//print("Popped value: \(poppedValue)")


// example of removeLast
//var list = LinkedList<Int>()
//list.push(3)
//list.push(2)
//list.push(1)
//
//print("Before popping list: \(list)")
//let removedValue = list.removeLast()
//print("After popping list: \(list)")
//print("Removed value: " + String(describing: removedValue))


// example of Using collection
//var list = LinkedList<Int>()
//for i in 0...9 {
//    list.append(i)
//}
//
//print("List: \(list)")
//print("First element: \(list[list.startIndex])")
//print("Array containing first 3 elements: \(Array(list.prefix(3)))")
//print("Array containing last 3 elements: \(Array(list.suffix(3)))")
//
//let sum = list.reduce(0, +)
//print("Sum of all values: \(sum)")


// example of Array cow(copy on write)
//let array1 = [1, 2]
//var array2 = array1
//print(array1)
//print(array2)
//
//print("---After adding 3 to array 2---")
//array2.append(3)
//print(array1)
//print(array2)


// example of Linked list cow
//var list1 = LinkedList<Int>()
//list1.append(1)
//list1.append(2)
//
//print("List1 uniquely referenced: \(isKnownUniquelyReferenced(&list1.head))")
//var list2 = list1
//print("List1 uniquely referenced: \(isKnownUniquelyReferenced(&list1.head))")
//
//print("List1: \(list1)")
//print("List2: \(list2)")
//
//print("After appending 3 to list2")
//list2.append(3)
//print("List1: \(list1)")
//print("List2: \(list2)")
