import Foundation

public class PrioritySelectorNode: SelectorNode {
    
    public var _sortedChildrens: Array<Node>?
    public var sortedChildrens: Array<Node> {
        guard let _sortedChildrens else {
            _sortedChildrens = arrangeChildrens()
            return _sortedChildrens!
        }
        return _sortedChildrens
    }
    
    public init(name: String) {
        super.init(name: name)
    }
    
    public override func process() -> Node.Status {
        for child in sortedChildrens {
            switch child.process() {
            case .running:
                return .running
            case .sucess:
                return .sucess
            default:
                continue
            }
        }
        return .failure
    }
    
    public func arrangeChildrens() -> Array<Node> {
        return childrens.sorted { lhs, rhs in
            return lhs.priority > rhs.priority
        }
    }
    
    public override func reset() {
        super.reset()
        _sortedChildrens = nil
    }
}
