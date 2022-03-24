//
//  Queue.swift
//  VisualisingDataStructures
//
//  Created by Ghosh, Ssnehnil (BJH) on 03/03/2022.
//

import Foundation

class Queue: NSObject, ObservableObject {
    @Published var items: [String] = []
    
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
    
    func isEmpty() -> Bool {
        if items.count == 0 {
            return true
        } else {
            return false
        }
    }
    
    func isFull() -> Bool {
        if items.count >= 10 {
            return true
        } else {
            return false
        }
    }
}
