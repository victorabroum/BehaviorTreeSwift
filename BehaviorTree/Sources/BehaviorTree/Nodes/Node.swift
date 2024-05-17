import Foundation

open class Node {
    public enum Status {
        case sucess, failure, running
    }
    
    public private(set) var name: String
    public var status: Status
    public var childrens: Array<Node>
    
    public var currentChildIndex: Int
    
    public var parent: Node?
    
    public var priority: Int
    
    public init(name: String = "Node",
                status: Status = .running,
                childrens: Array<Node> = [],
                currentChildIndex: Int = 0,
                priority: Int = 0,
                parent: Node? = nil) {
        self.status = status
        self.name = name
        self.childrens = childrens
        self.currentChildIndex = currentChildIndex
        self.priority = priority
        self.parent = parent
    }
    
    open func addChild(_ node: Node) {
        node.parent = self
        self.childrens.append(node)
    }
    
    open func process() -> Status {
        return childrens[self.currentChildIndex].process()
    }
    
    open func reset() {
        currentChildIndex = 0
        
        for child in childrens {
            child.reset()
        }
    }
}
