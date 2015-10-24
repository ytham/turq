//
//  YAKStores.swift
//  Turq
//
//  Created by Yu Jiang Tham on 10/24/15.
//  Copyright © 2015 YAK. All rights reserved.
//

import Foundation

class YAKStores {
    
    var imgUrl: String = ""
    var name: String = ""
    var address: String = ""
    var distance: Double = 0.0
    
    init(imgUrl: String, name: String, address: String, distance: Double) {
        self.imgUrl = imgUrl
        self.name = name
        self.address = address
        self.distance = distance
    }
    
}