import Foundation

public class RepeatCountNode: Node {
    
    var count: Int
    
    public init(name: String, count: Int, priority: Int = 0) {
        self.count = count
        super.init(name: name, priority: priority)
    }
    
    public override func process() -> Node.Status {
        switch childrens[0].process() {
        case .runnnig:
            return .runnnig
        case .failure:
            reset()
            return .failure
        default:
            count -= 1
            if count <= 0 {
                return .sucess
            }
            reset()
            return .runnnig
        }
        
        return .failure
    }
}
