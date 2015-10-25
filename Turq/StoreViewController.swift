//
//  StoreViewController.swift
//  Turq
//
//  Created by Yu Jiang Tham on 10/24/15.
//  Copyright © 2015 YAK. All rights reserved.
//

import UIKit
//import SwiftyJSON

private let reuseIdentifier = "StoreCell"
class StoreViewController: UICollectionViewController,UITextFieldDelegate {
    

    
    var products: Array<YAKProduct> = []
    var storeName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = self.storeName
        
        //        self.populateCollection()
        
        let ref = Firebase(url: "https://weatheringwillowz.firebaseio.com/shops")
        
        ref.observeEventType(FEventType.Value, withBlock: { snapshot in
            self.products = []
            
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
                    
                    self.products.append(yakProduct)
                }
            }
            // Update the UI data fields
            
            // Update tableView
            self.collectionView!.reloadData()
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
    
    
    // MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    
    
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
        
        //        let imageView = UIImageView(image: UIImage(named: "Assets/2. Nearby Screen/Campaign " + String(indexPath.row+1) + ".png"))
        //
        //        cell.backgroundView = imageView
        cell.layer.cornerRadius = 3.0
        cell.layer.borderWidth = 1.0
        cell.layer.borderColor = UIColor.blackColor().CGColor
        cell.layer.shadowColor = UIColor.blackColor().CGColor
        cell.layer.shadowOffset = CGSizeMake(2.0, 2.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 1.0
        
        
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        
    }
    
    
    // MARK: UICollectionViewDelegate
    override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        var reusableView: UICollectionReusableView? = nil
        
        
        reusableView = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "Header", forIndexPath: indexPath)
        
        let txtField: UITextField = UITextField(frame: CGRect(x: 10, y: 10, width: 350, height: 30.00));
        txtField.borderStyle = .RoundedRect
        txtField.font = UIFont(name: "HelveticaNeue", size:  16   )
        reusableView!.addSubview(txtField)
        
        txtField.delegate = self
        txtField.addTarget(self, action: "textFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
        
        
        return reusableView!
    }
    
    func textFieldDidChange(textField: UITextField) {
        let filterText = textField.text
        print(filterText)
        
    }



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
        let product1 = YAKProduct(img: "", name: "Shirt", company: "C", category: "Shirt", price: "$85.00", size: "M", distance: "0.1mi")
        let product2 = YAKProduct(img: "", name: "Blouse", company: "C", category: "Shirt", price: "$25.00", size: "M", distance: "0.5mi")
        let product3 = YAKProduct(img: "", name: "Pants", company: "C", category: "Bottoms", price: "$135.00", size: "M", distance: "0.3mi")
        
        self.products.append(product1)
        self.products.append(product2)
        self.products.append(product3)
    }
    
}
