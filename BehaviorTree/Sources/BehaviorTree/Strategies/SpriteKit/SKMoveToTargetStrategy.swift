import Foundation
//import SpriteKit
//import BehindGameKit
//
//public class SKMoveToTargetStrategy: Strategy {
//    
//    var node: SKNode
//    var targetPosition: CGPoint
//    var speed: CGFloat
//    
//    private var isMoving: Bool
//    
//    public init(node: SKNode, targetPosition: CGPoint, speed: CGFloat) {
//        self.node = node
//        self.targetPosition = targetPosition
//        self.speed = speed
//        self.isMoving = false
//    }
//    
//    public func process() -> Node.Status {
//        
//        guard !isMoving else { return .sucess }
//        
//        isMoving = true
//        
//        let distance = node.position.distance(to: targetPosition)
//        
//        node.run(.move(to: targetPosition, duration: .calculateTravelTime(speed: distance, distance: speed))) { [weak self] in
//            self?.isMoving = false
//        }
//        
//        return .runnnig
//    }
//}
