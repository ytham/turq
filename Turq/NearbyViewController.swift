//
//  NearbyViewController.swift
//  Turq
//
//  Created by Yu Jiang Tham on 10/24/15.
//  Copyright © 2015 YAK. All rights reserved.
//

import UIKit

class NearbyViewController: UITableViewController {
    
    var stores: Array = ["LOLAS", "MILLER'S HARDWARE", "GALLERIE GEMS", "LIGHT IT UP"]
//    var selectedStore: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "TURQ"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return stores.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("NearbyCell", forIndexPath: indexPath)

        let imageView = UIImageView(image: UIImage(named: "Assets/2. Nearby Screen/Campaign " + String(indexPath.row+1) + ".png"))
        
        cell.backgroundView = imageView

        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 320
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        NSLog("Tapped " + String(indexPath.row))
//        self.selectedStore = stores[indexPath.row]
//        NSLog(self.selectedStore)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "NearbyTableView") {
            let vc = segue.destinationViewController as! StoreViewController
            if let indexPath = tableView.indexPathForCell(sender as! UITableViewCell) {
                vc.storeName = self.stores[indexPath.row]
            }

        }
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
