import Foundation


public class ActionStrategy: Strategy {
    var action: () -> Void
    
    public init(action: @escaping () -> Void) {
        self.action = action
    }
    
    public func process() -> Node.Status {
        action()
        return .success
    }
}
