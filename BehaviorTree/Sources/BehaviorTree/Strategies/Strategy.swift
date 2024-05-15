import Foundation

public protocol Strategy {
    func process() -> Node.Status
    func reset()
}

public extension Strategy {
    func reset() {
        
    }
}
