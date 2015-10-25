//
//  YAKProductGetter.swift
//  Turq
//
//  Created by Yu Jiang Tham on 10/24/15.
//  Copyright © 2015 YAK. All rights reserved.
//

import Foundation
import UIKit

class YAKProductGetter {
    
    class func convertSnapshotToProductArray(snapshot: FDataSnapshot, collectionView: UICollectionView) -> Array<YAKProduct> {
        var products: Array<YAKProduct> = []
        
        // Update the array for tableView
        for shop in snapshot.children {
            let shopSnap = shop as! FDataSnapshot
            for product in shopSnap.children {
                let productSnap = product as! FDataSnapshot
                let data = productSnap.value
                
                let yakProduct = YAKProduct()
                yakProduct.img = data.objectForKey("img") as! String
                yakProduct.name = data.objectForKey("name") as! String
                yakProduct.category = data.objectForKey("category") as! String
                yakProduct.company = data.objectForKey("company") as! String
                yakProduct.distance = data.objectForKey("distance") as! String
                yakProduct.size = data.objectForKey("size") as! String
                yakProduct.price = data.objectForKey("price") as! String
                
                products.append(yakProduct)
                collectionView.reloadData()
            }
        }
        
        return products
    }
    
}