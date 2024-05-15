import GameplayKit
//import SpriteKit
//
//public class SKPatrolStrategy: Strategy {
//    
//    var entity: GKEntity
//    var wayPoints: Array<CGPoint>
//    var patrolSpeed: CGFloat
//    var currentIndex: Int
//    var isMoving: Bool = false
//    
//    public init(entity: GKEntity, wayPoints: Array<CGPoint>, patrolSpeed: CGFloat, currentIndex: Int) {
//        self.entity = entity
//        self.wayPoints = wayPoints
//        self.patrolSpeed = patrolSpeed
//        self.currentIndex = currentIndex
//    }
//
//    public func process() -> Node.Status {
//        if (currentIndex == wayPoints.count) { return .sucess }
//        
//        var target = wayPoints[currentIndex]
//        guard let node = entity.component(ofType: GKSKNodeComponent.self)?.node else { return .failure}
//        
//        guard !isMoving else { return .runnnig }
//        
//        let distance = node.position.distance(to: target)
//        
//        isMoving = true
//        
//        node.run(.move(to: target, duration: .calculateTravelTime(speed: patrolSpeed, distance: distance))) { [weak self] in
//            self?.isMoving = false
//            self?.currentIndex += 1
//        }
//        
//        return .runnnig
//    }
//    
//    public func reset() {
//        currentIndex = 0
//    }
//}
