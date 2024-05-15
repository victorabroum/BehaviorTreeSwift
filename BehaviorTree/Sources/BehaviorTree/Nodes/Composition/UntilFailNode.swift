import Foundation

public class UntilFailNode: Leaf {
    public override func process() -> Node.Status {
        if (strategy.process() == .failure) {
            reset()
            return .failure
        }
        return .runnnig
    }
}
