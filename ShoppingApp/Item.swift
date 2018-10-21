
import Foundation
import UIKit

class Item {

    private var user: User
    private var itemName: String
    private var itemImage: UIImage?
    private var itemSizes: [String]?
    private var itemPrice: Double
    private var itemDescription: String
    //private var id: String
    private var itemCategory: String?
    private var buzzCollection: [String: BuzzEntry]?
    private var itemLikedBy: [User]?
    private var itemBoughtBy: [User]?
    var change: Int?
    
    
    init(user: User, itemName: String, itemImage: UIImage?, itemSizes: [String]?, itemPrice: Double, itemDescription: String, itemCategory: String?) { //TODO
        self.user = user
        self.itemName = itemName
        self.itemImage = itemImage
        self.itemSizes = itemSizes
        self.itemPrice = itemPrice
        self.itemDescription = itemDescription
        self.itemCategory = itemCategory
        self.buzzCollection = [String: BuzzEntry]()
    }
    
    func getUser() -> User {
        return self.user
    }
    
    func setUser(newUser: User) {
        self.user = newUser
    }
    
    func getItemName() -> String {
        return self.itemName
    }
    
    func setItemName(newItemName: String) {
        self.itemName = newItemName
    }
    
    func getItemImage() -> UIImage? {
        return self.itemImage
    }
    
    func setItemImage(newUIImage: UIImage) {
        self.itemImage = newUIImage
    }
    
    func getItemSizes() -> [String]? {
        return self.itemSizes
    }
    
    func setItemSizes(newItemSizes: [String]) {
        self.itemSizes = newItemSizes
    }
    
    func getItemPrice() -> Double {
        return self.itemPrice
    }
    
    func setItemPrice(newItemPrice: Double) {
        self.itemPrice = newItemPrice
    }
    
    func getItemDescription() -> String {
        return self.itemDescription
    }
    
    func setItemDescription(newItemDescription: String) {
        self.itemDescription = newItemDescription
    }
    
    func getItemCategory() -> String? {
        return self.itemCategory
    }
    
    func setItemCategory(newItemCategory: String) {
        self.itemCategory = newItemCategory
    }
}
