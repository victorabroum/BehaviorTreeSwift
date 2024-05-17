import Foundation

open class BehaviorTree: Node {
    public init(name: String) {
        super.init(name: name)
    }
    
    open override func process() -> Node.Status {
        while (currentChildIndex < childrens.count) {
            var status = childrens[currentChildIndex].process()
            if (status != .success) {
                return status
            }
            currentChildIndex += 1
        }
        return .success
    }
}
