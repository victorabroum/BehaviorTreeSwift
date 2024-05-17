import Foundation

public class UntilFailNode: Node {
    public init(name: String, priority: Int = 0) {
        super.init(name: name, priority: priority)
    }
    
    public override func process() -> Node.Status {
        if (childrens[0].process() == .failure) {
            reset()
            return .failure
        }
        
        return .running
    }
}
