import Foundation

open class ConditionalStrategy: Strategy {
    
    var predicate: () -> Bool
    
    public init(predicate: @escaping () -> Bool) {
        self.predicate = predicate
    }
    
    public func process() -> Node.Status {
        return predicate() ? .success : .failure
    }
}
