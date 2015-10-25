//
//  AppDelegate.h
//  PerkaDemo
//
//  Created by Raghu Vamsi on 3/18/15.
//  Copyright (c) 2015 Raghu Vamsi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <InAppSDK/InAppSDK.h>


///* ----- CAT environment
#define kEnvironment @"CERT"
#define kApiKey             @"aF5Bs486EMUrdqQAk584DCUbm5v8ZmHQ" //replace this with your Payeezy API Key
#define kApiSecret          @"37c3a606ea32b2e43abab20aff2d49d60949351350bc9a4810df706a70dc22cc" //replace this with your Payeezy API Secret
#define kMerchantToken      @"fdoa-a480ce8951daa73262734cf102641994c1e55e7cdf4c02b6" //replace this with your Payeezy Token


#define kApplePayMerchantId @"merchant.com.cert.PAA0D1" //replace with the merchantID assigned to this app on the Apple Developer Site
// ------------ */


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) FDInAppPaymentProcessor *pePaymentProcessor;



@end

