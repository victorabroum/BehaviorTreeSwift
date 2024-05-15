import Foundation

open class Leaf: Node {
    public var strategy: Strategy
    
    public init(name: String, processable: Strategy, priotity: Int = 0) {
        self.strategy = processable
        super.init(name: name, priority: priotity)
    }
    
    open override func process() -> Node.Status {
        self.strategy.process()
    }
    
    open override func reset() {
        self.strategy.reset()
    }
}
