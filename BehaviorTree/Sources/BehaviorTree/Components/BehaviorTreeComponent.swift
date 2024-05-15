import Foundation
import GameplayKit

public class BehaviorTreeComponent: GKComponent {
    
    var root: BehaviorTree
    
    public init(behaviorTree: BehaviorTree) {
        self.root = behaviorTree
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func update(deltaTime seconds: TimeInterval) {
        root.process()
    }
    
}
