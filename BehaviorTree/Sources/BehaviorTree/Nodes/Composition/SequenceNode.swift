import Foundation

public class SequenceNode: Node {
    public init(name: String, childrens: Array<Node> = [], priority: Int = 0) {
        super.init(name: name, childrens: childrens, priority: priority)
    }
    
    public override func process() -> Node.Status {
        if (currentChildIndex < childrens.count) {
            switch(childrens[currentChildIndex].process()) {
            case .running:
                return .running
            case .failure:
                reset()
                return .failure
            default:
                currentChildIndex += 1
                return currentChildIndex == childrens.count ? .success : .running
            }
        }
        reset()
        return .success
    }
}
