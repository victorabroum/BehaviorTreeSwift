
public class Blackboard {
    public static var shared = Blackboard()
    private init() { }
    
    private var data: [String: Any] = [:]
    
    public func set<T>(forKey key: String, value: T) {
        data[key] = value
    }
    
    public func get<T>(forKey key: String) -> T? {
        return data[key] as? T
    }
    
    public func contains(key: String) -> Bool {
        return data[key] != nil
    }
    
    public func removeValue(forKey key: String) {
        data.removeValue(forKey: key)
    }
    
    public func removeAll() {
        data.removeAll()
    }
}
