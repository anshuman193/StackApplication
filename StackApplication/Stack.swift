//
//  Stack.swift
//  StackApplication
//
//  Created by anshuman singh on 15/10/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

protocol Stack {

    associatedtype ElementType
    var peek: ElementType { get }
    mutating func push(element: ElementType)
    mutating func pop() -> ElementType?
}

struct StringStack: Stack {
    
    var peek: String
    
    private var stackArr = Array<String>()
    
    private func isEmpty() -> Bool {
        
        return stackArr.count > 0 ? true:false
    }
    
    mutating func push(element: String) {
        stackArr.append(element)
    }

    mutating func pop() -> String? {
        
        if isEmpty() {
            
            print("Stack is empty")
            return nil
        } else {
            
            return stackArr.popLast()
        }
    }
}
