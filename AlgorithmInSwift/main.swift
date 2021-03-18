//
//  main.swift
//  AlgorithmInSwift
//
//  Created by 하동훈 on 2021/03/11.
//

import Foundation

// MARK: - Boyer-Moore String Search

let string = "Hello, World"
print(string.index(of: "World")!)
print(string.index(ofV2: "World")!)


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
