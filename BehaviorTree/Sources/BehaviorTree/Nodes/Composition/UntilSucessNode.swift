import Foundation

public class UntilSucessNode: Leaf {
    public override func process() -> Node.Status {
        if (strategy.process() == .sucess) {
            reset()
            return .sucess
        }
        return .runnnig
    }
}
