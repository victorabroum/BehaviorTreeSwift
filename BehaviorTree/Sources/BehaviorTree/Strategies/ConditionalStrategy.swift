import Foundation

public class ConditionalStrategy: Strategy {
    
    var predicate: () -> Bool
    
    public init(predicate: @escaping () -> Bool) {
        self.predicate = predicate
    }
    
    public func process() -> Node.Status {
        return predicate() ? .sucess : .failure
    }
}
