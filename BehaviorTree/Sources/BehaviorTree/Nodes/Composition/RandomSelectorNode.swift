import Foundation

public class RandomSelectorNode: PrioritySelectorNode {
    public override func arrangeChildrens() -> Array<Node> {
        return childrens.shuffled()
    }
}
