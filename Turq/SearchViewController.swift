//
//  SearchViewController.swift
//  Turq
//
//  Created by Yu Jiang Tham on 10/24/15.
//  Copyright © 2015 YAK. All rights reserved.
//

import UIKit

private let reuseIdentifier = "SearchCell"

class SearchViewController: UICollectionViewController, UITextFieldDelegate {

    var products: Array<YAKProduct> = []
    var filteredProducts: Array<YAKProduct> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView!.backgroundView = UIImageView(image: UIImage(named: "Assets/BackgroundFINAL.png"))

        let ref = Firebase(url: "https://weatheringwillowz.firebaseio.com/shops")
        
        ref.observeEventType(FEventType.Value, withBlock: { snapshot in
            // Update the array for tableView
            self.products = YAKProductGetter.convertSnapshotToProductArray(snapshot, collectionView: self.collectionView!)
            
            // Update collectionView
//            self.collectionView!.reloadData()
        })
        
        // Register cell classes
//        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        if (segue.identifier == "SearchCollectionView") {
            let vc = segue.destinationViewController as! ProductViewController
            if let indexPath = collectionView?.indexPathForCell(sender as! UICollectionViewCell) {
                vc.product = self.products[indexPath.row]
            }
        }
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        NSLog("Product count: " + String(products.count))
        return self.products.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! SearchCollectionViewCell
        
        let yakProduct = products[indexPath.row] as YAKProduct
        print(yakProduct.img)
        let url = NSURL(string: yakProduct.img)!
        let data = NSData(contentsOfURL: url)
        let image = UIImage(data: data!)
        print(image?.description)
        cell.backgroundView = UIImageView(image: image)
//        cell.img.image = image!
        cell.name.text = yakProduct.name
        cell.name.layer.shadowColor = UIColor.blackColor().CGColor
        cell.name.layer.shadowOffset = CGSizeMake(0.0, 1.0)
        cell.name.layer.shadowRadius = 1.0
        cell.name.layer.shadowOpacity = 1.0
        
        cell.price.text = yakProduct.price
        cell.price.backgroundColor = YAKColors.priceBG
        
        cell.layer.cornerRadius = 4.0
//        cell.layer.borderWidth = 1.0
//        cell.layer.borderColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1).CGColor
        cell.layer.backgroundColor = UIColor.whiteColor().CGColor
        cell.layer.shadowColor = UIColor.blackColor().CGColor
        cell.layer.shadowOffset = CGSizeMake(0.0, 1.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 0.25
        
        return cell
    }

    
    // MARK: UICollectionViewDelegate
    override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        var reusableView: UICollectionReusableView? = nil
        
        reusableView = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "SearchHeader", forIndexPath: indexPath)
        
        let txtField: UITextField = UITextField(frame: CGRect(x: 10, y: 10, width: 350, height: 30.00));
        txtField.borderStyle = .RoundedRect
        txtField.font = UIFont(name: "HelveticaNeue", size: 16)
        reusableView!.addSubview(txtField)
        
        txtField.delegate = self
        txtField.addTarget(self, action: "textFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
        
        return reusableView!
    }
    
    func textFieldDidChange(textField: UITextField) {
        self.filteredProducts = self.products.filter() { (product: YAKProduct) -> Bool in
            let match = product.name.lowercaseString.rangeOfString(textField.text!.lowercaseString)
            return match != nil ? true : false
//            contains(($0 as YAKProduct).name, textField.text!)
        }
        let filterText = textField.text!
        print(filterText)
        
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

}
