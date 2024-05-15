import Foundation

public class WaitStrategy: Strategy {
    
    var waitTime: TimeInterval
    var startTime: Date?
    
    public init(waitTime: TimeInterval) {
        self.waitTime = waitTime
    }
    
    public func process() -> Node.Status {
        
        if startTime == nil {
            startTime = Date()
        }
        
        let elapsedTime = Date().timeIntervalSince(startTime!)
        
        if elapsedTime < waitTime {
            return .runnnig
        } else {
            reset()
            return .sucess
        }
    }
    
    public func reset() {
        startTime = nil
    }
}
