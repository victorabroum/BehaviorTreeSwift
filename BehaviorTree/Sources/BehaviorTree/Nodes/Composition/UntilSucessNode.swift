import Foundation

public class UntilSucessNode: Node {
    public init(name: String, priority: Int = 0) {
        super.init(name: name, priority: priority)
    }
    
    public override func process() -> Node.Status {
        if (childrens[0].process() == .success) {
            reset()
            return .success
        }
        
        return .running
    }
}
