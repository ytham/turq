//
//  ProductViewController.swift
//  Turq
//
//  Created by Yu Jiang Tham on 10/24/15.
//  Copyright © 2015 YAK. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    var product: YAKProduct?
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var sizeXS: UILabel!
    @IBOutlet weak var sizeS: UILabel!
    @IBOutlet weak var sizeM: UILabel!
    @IBOutlet weak var sizeL: UILabel!
    @IBOutlet weak var sizeXL: UILabel!
    @IBOutlet weak var distanceAndAddress: UILabel!
    @IBOutlet weak var addCartButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: self.product!.img)!
        let data = NSData(contentsOfURL: url)
        let image = UIImage(data: data!)
        self.img.image = image!
        self.name.text = self.product!.name
        self.price.text = self.product!.price
        let distance = self.product!.distance
        // Need to add address

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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
