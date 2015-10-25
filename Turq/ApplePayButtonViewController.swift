//
//  ApplePayButtonViewController.swift
//  Turq
//
//  Created by Yu Jiang Tham on 10/25/15.
//  Copyright © 2015 YAK. All rights reserved.
//

import UIKit

class ApplePayButtonViewController: UIViewController {

    @IBOutlet weak var applePayButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        applePayButton.frame = CGRectMake(0, 0, 150, 50)
        applePayButton.setBackgroundImage(UIImage(named:"Assets/5. Cart Page/ApplePayBTN_32pt__black_logo_@2x.png"), forState: UIControlState.Normal)

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
