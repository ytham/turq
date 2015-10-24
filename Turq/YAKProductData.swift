//
//  YAKProductData.swift
//  Turq
//
//  Created by Yu Jiang Tham on 10/24/15.
//  Copyright © 2015 YAK. All rights reserved.
//

import Foundation

class YAKProductData {
    
    var imgUrl: String = ""
    var name: String = ""
    var price: Double = 0.0
    var size: Character = "M"
    var distance: Double = 0.0
    
    init(imgUrl: String, name: String, price: Double, size: Character, distance: Double) {
        self.imgUrl = imgUrl
        self.name = name
        self.price = price
        self.size = size
        self.distance = distance
    }
    
}