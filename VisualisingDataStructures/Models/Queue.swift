//
//  Queue.swift
//  VisualisingDataStructures
//
//  Created by Ghosh, Ssnehnil (BJH) on 03/03/2022.
//

import Foundation

class Queue {
    var items: [String] = []
    
    func enqueue(item: String) -> [String] {
        items.append(item)
        return items
    }
    
    func dequeue() -> String {
        if items.count == 0 {
            return "Queue empty"
        } else {
            return "\(self.items.removeFirst())"
        }
    }
    
    func show() -> [String] {
        return items
    }
}
