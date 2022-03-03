//
//  Stack.swift
//  VisualisingDataStructures
//
//  Created by Ghosh, Ssnehnil (BJH) on 03/03/2022.
//

import Foundation

class Stack: NSObject, ObservableObject {
    private var stack: [String] = []
    
    func peek() -> String? {
        return stack.first
    }
    
    func view() -> [String] {
        return stack
    }
    
    func push(item: String) -> [String]{
        stack.append(item)
        return stack
    }
    
    func pop() -> String? {
        if stack.count == 0 {
            return "Empty"
        } else {
            return "\(self.stack.removeLast())"
        }
    }
}
