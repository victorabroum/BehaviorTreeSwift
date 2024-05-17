import Foundation

public class RepeatForeverNode: Node {
    public init(name: String, priority: Int = 0) {
        super.init(name: name, priority: priority)
    }
    
    public override func process() -> Node.Status {
        switch childrens[0].process() {
        case .running:
            return .running
        case .failure:
            reset()
            return .failure
        default:
            reset()
            return .running
        }
    }
}
