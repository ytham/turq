//
//  StoreViewController.swift
//  Turq
//
//  Created by Yu Jiang Tham on 10/24/15.
//  Copyright © 2015 YAK. All rights reserved.
//

import UIKit

private let reuseIdentifier = "StoreCell"

class StoreViewController: UICollectionViewController {
    
    var products: Array<YAKProduct> = []
    var storeName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.title = self.storeName
        
        self.populateCollection()
        
        let ref = Firebase(url: "https://weatheringwillowz.firebaseio.com/")
        
        ref.observeEventType(.Value, andPreviousSiblingKeyWithBlock: { snapshot in
            // Update the array for tableView
            
            // Update the UI data fields
            
            // Update tableView
        })

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        NSLog("Product count: " + String(products.count))
        return products.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)
    
        // Configure the cell
    
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */
    
    
    // MARK: Debug functoins
    
    func populateCollection() {
        let product1 = YAKProduct(img: "", name: "Shirt", category: "Shirt", price: "$85.00", size: "M", distance: "0.1mi")
        let product2 = YAKProduct(img: "", name: "Blouse", category: "Shirt", price: "$25.00", size: "M", distance: "0.5mi")
        let product3 = YAKProduct(img: "", name: "Pants", category: "Bottoms", price: "$135.00", size: "M", distance: "0.3mi")
        
        self.products.append(product1)
        self.products.append(product2)
        self.products.append(product3)
    }

}
