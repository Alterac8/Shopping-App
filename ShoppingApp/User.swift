import Foundation
import UIKit

class User: Hashable {
    
    private let uid: String
    
    private var username: String
    private var friends: [String: User]?
    private var likedItems: [String: Item]?
    private var profilePicture: UIImage?
    
    init(uid: String, username: String, profilePicture: UIImage?) {
        self.uid = uid
        self.username = username
        self.profilePicture = profilePicture
        friends = [String: User]()
        likedItems = [String: Item]()
    }

    public func getUID() -> String {
        return self.uid
    }
    
    public func getUsername() -> String {
        return self.username
    }
    
    public func setUsername(newUsername: String) {
        self.username = newUsername
    }
    
    public func getProfilePicture() -> UIImage?{
        return self.profilePicture
    }
    
    public func setProfilePicture(image: UIImage) {
        self.profilePicture = image
    }
    
    public func getLikedItems() -> [String: Item]? {
        return self.likedItems
    }
    
    public func addLikedItem(item: Item) {
        self.likedItems?[item.getItemID()] = item
    }
    
    public func removeLikedItem(itemID: String) {
        self.likedItems?.removeValue(forKey: itemID)
    }
    
    public func getLikeItem(newLikedList: [String: Item]) {
        self.likedItems = newLikedList
    }
    
    public func getFriends() -> [String:User]? {
        return self.friends
    }
    
    public func addFriend(friend: User) {
        self.friends?[friend.getUID()] = friend
    }
    
    public func removeFriend(friendID: String) {
        self.friends?.removeValue(forKey: friendID)
    }
    
    public func updateFriendList(newFriendList: [String: User]) {
        self.friends = newFriendList
    }
    
    static func ==(lhs: User, rhs: User) -> Bool {
        return lhs.username == rhs.username
    }
    
    var hashValue: Int {
        return username.hashValue
    }
}
