//
//  VisualisingDataStructuresTests.swift
//  VisualisingDataStructuresTests
//
//  Created by Ghosh, Ssnehnil (BJH) on 03/03/2022.
//

import XCTest
@testable import VisualisingDataStructures

class VisualisingDataStructuresTests: XCTestCase {

    func testStackPush() {
        let stack = Stack()
        XCTAssertEqual(stack.push(item: "Apple"), ["Apple"])
    }
    
    func testStackPop() {
        let stack = Stack()
        let _ = stack.push(item: "Apple")
        XCTAssertEqual(stack.pop(), "Apple")
    }
    
    func testStackView() {
        let stack = Stack()
        let _ = stack.push(item: "Apple")
        let _ = stack.push(item: "Banana")
        let _ = stack.push(item: "Carrot")
        XCTAssertEqual(stack.view(), ["Apple","Banana","Carrot"])
    }
    
    func testStackPeek() {
        let stack = Stack()
        let _ = stack.push(item: "Apple")
        XCTAssertEqual(stack.peek(), "Apple")
    }
    
    func testEnqueue() {
        let queue = Queue()
        XCTAssertEqual(queue.enqueue(item: "Apple"), ["Apple"])
    }
    
    func testDequeue() {
        let queue = Queue()
        let _ = queue.enqueue(item: "Apple")
        XCTAssertEqual(queue.dequeue(), "Apple")
    }
    
    func testQueueShow() {
        let queue = Queue()
        let _ = queue.enqueue(item: "Apple")
        let _ = queue.enqueue(item: "Banana")
        XCTAssertEqual(queue.show(), ["Apple","Banana"])
    }

}
