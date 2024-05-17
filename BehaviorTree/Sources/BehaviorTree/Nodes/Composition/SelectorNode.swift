import Foundation

public class SelectorNode: Node {
    public init(name: String, priority: Int = 0) {
        super.init(name: name, priority: priority)
    }
    
    public override func process() -> Node.Status {
        if (currentChildIndex < childrens.count) {
            switch (childrens[currentChildIndex].process()) {
            case .running:
                return .running
            case .success:
                reset()
                return .success
            default:
                currentChildIndex += 1
                return .running
            }
        }
        reset()
        return .failure
    }
}
