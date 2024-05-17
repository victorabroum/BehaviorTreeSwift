import Foundation

public class SequenceNode: Node {
    public init(name: String, priority: Int = 0) {
        super.init(name: name, priority: priority)
    }
    
    public override func process() -> Node.Status {
//        if (currentChildIndex < childrens.count) {
//            switch(childrens[currentChildIndex].process()) {
//            case .running:
//                return .running
//            case .failure:
//                reset()
//                return .failure
//            default:
//                currentChildIndex += 1
//                return currentChildIndex == childrens.count ? .sucess : .running
//            }
//        }
//        reset()
//        return .sucess
        
        while currentChildIndex < childrens.count {
            let status = childrens[currentChildIndex].process()
            switch status {
            case .running:
                self.status = .running
                return .running
            case .failure:
                self.status = .failure
                return .failure
            case .success:
                currentChildIndex += 1
            }
        }
        
        self.status = .success
        return .success
    }
    
    public override func reset() {
        super.reset()
        currentChildIndex = 0
        for child in childrens {
            child.reset()
        }
    }
}
