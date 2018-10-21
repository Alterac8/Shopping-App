//
//  buzzEntry.swift
//  ShoppingApp
//
//  Created by Adley Wong on 10/14/18.
//  Copyright © 2018 App Dev Club. All rights reserved.
//

import Foundation

class buzzEntry {
    private var item: Item
    private var timeStamp: Date
    private var buzz: String
    private var rating: Double?
    private var likes: Int
    
    init(item: Item, buzz: String, rating: Double?) {
        self.item = item
        self.buzz = buzz
        self.rating = rating
        self.likes = 0
        self.timeStamp = Date()
    }
    
    func addLikes() -> Int {
        self.likes += 1
        
    }
    
    func getBuzz() -> String {
        return buzz
    }
    
    func setBuzz(newBuzz: String) {
        self.buzz = newBuzz
    }
}
