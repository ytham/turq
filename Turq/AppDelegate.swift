//
//  AppDelegate.swift
//  Turq
//
//  Created by Yu Jiang Tham on 10/24/15.
//  Copyright © 2015 YAK. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    ///* ----- CAT environment
    let kEnvironment = "CERT"
    let kApiKey = "aF5Bs486EMUrdqQAk584DCUbm5v8ZmHQ" //replace this with your Payeezy API Key
    let kApiSecret = "37c3a606ea32b2e43abab20aff2d49d60949351350bc9a4810df706a70dc22cc" //replace this with your Payeezy API Secret
    let kMerchantToken = "fdoa-a480ce8951daa73262734cf102641994c1e55e7cdf4c02b6" //replace this with your Payeezy Token
    
    
    let kApplePayMerchantId = "merchant.com.cert.PAA0D1" //replace with the merchantID assigned to this app on the Apple Developer Site
    // ------------ */
    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

