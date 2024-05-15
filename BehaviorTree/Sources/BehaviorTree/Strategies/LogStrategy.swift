import Foundation

public class LogStrategy: Strategy {
    
    var text: String
    
    public init(text: String) {
        self.text = text
    }
    
    public func process() -> Node.Status {
        print(text)
        return .sucess
    }
}
