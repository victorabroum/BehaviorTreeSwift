import Foundation

public class SequenceNode: Node {
    public init(name: String, priority: Int = 0) {
        super.init(name: name, priority: priority)
    }
    
    public override func process() -> Node.Status {
        if (currentChildIndex < childrens.count) {
            switch(childrens[currentChildIndex].process()) {
            case .runnnig:
                return .runnnig
            case .failure:
                reset()
                return .failure
            default:
                currentChildIndex += 1
                return currentChildIndex == childrens.count ? .sucess : .runnnig
            }
        }
        reset()
        return .sucess
    }
}
