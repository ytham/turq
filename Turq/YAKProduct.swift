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
    var company: String = ""
    var category: String = ""
    var price: String = ""
    var size: String = ""
    var distance: String = ""
    
    init() {
        
    }
    
    init(img: String, name: String, company: String, category: String, price: String, size: String, distance: String) {
        self.img = img
        self.name = name
        self.company = company
        self.category = category
        self.price = price
        self.size = size
        self.distance = distance
    }
    
}