import Foundation
class User: Hashable {
    
    private let username: String
    private let uid: Int
    
    init(uid: Int, username: String) {
        self.username = username
        self.uid = uid
    }

//    var hashValue: Int {
//        return 1
//    }
    
    init(username: String) {
        self.username = username
    }
    
    public func getUsername() -> String {
        return self.username
    }
    
    static func ==(lhs: User, rhs: User) -> Bool {
        return lhs.username == rhs.username
    }
    
    var hashValue: Int {
        return username.hashValue
    }
}
