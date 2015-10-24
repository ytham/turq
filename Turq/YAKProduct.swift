//
//  YAKProduct.swift
//  Turq
//
//  Created by Yu Jiang Tham on 10/24/15.
//  Copyright © 2015 YAK. All rights reserved.
//

import Foundation

class YAKProduct {
    
    var img: String = ""
    var name: String = ""
    var category: String = ""
    var price: String = ""
    var size: Character = "M"
    var distance: String = ""
    
    init(img: String, name: String, category: String, price: String, size: Character, distance: String) {
        self.img = img
        self.name = name
        self.category = category
        self.price = price
        self.size = size
        self.distance = distance
    }
    
}