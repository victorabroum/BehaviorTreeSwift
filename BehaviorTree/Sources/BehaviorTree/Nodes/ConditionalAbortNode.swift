//
//  File.swift
//  
//
//  Created by Victor Vasconcelos on 18/05/24.
//

import Foundation

open class ConditionalAbortNode: Node {
    private var abortCondition: () -> Bool
    
    public init(name: String = "ConditionalAbortNode",
                abortCondition: @escaping () -> Bool,
                childrens: Array<Node> = []) {
        self.abortCondition = abortCondition
        super.init(name: name, childrens: childrens)
    }
    
    open override func process() -> Status {
        if abortCondition() {
            for children in self.childrens {
                children.reset()
            }
            return .failure // Abort the execution
        }
        
        return super.process() // Execute the children
    }
}
