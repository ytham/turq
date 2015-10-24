//
//  YAKStores.swift
//  Turq
//
//  Created by Yu Jiang Tham on 10/24/15.
//  Copyright © 2015 YAK. All rights reserved.
//

import Foundation

class YAKStores {
    
    var img: String = ""
    var name: String = ""
    var address: String = ""
    var distance: String = ""
    
    init(img: String, name: String, address: String, distance: String) {
        self.img = img
        self.name = name
        self.address = address
        self.distance = distance
    }
    
}