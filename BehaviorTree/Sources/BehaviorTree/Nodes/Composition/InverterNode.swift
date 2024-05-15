import Foundation

public class InverterNode: Node {
    public init(name: String, priority: Int = 0) {
        super.init(name: name, priority: priority)
    }
    
    public override func process() -> Node.Status {
        switch childrens[0].process() {
        case .runnnig:
            return .runnnig
        case .sucess:
            return .failure
        case .failure:
            return .sucess
        }
    }
}
