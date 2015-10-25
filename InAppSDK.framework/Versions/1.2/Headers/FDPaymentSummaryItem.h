//
//  FDPaymentSummaryItem.h
//  FDLibSDK
//
//  Copyright (c) 2014 First Data Corporation. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FDPaymentDefs.h"

@interface FDPaymentSummaryItem : NSObject

@property (nonatomic, copy) NSString *label;
@property (nonatomic, copy) NSDecimalNumber *amount;

// Defaults to PKPaymentSummaryItemTypeFinal
// Set to PKPaymentSummaryItemTypePending if the amount of the item is not known at this time
@property (nonatomic, assign) FDPaymentSummaryItemType type NS_AVAILABLE(NA, 9_0);


+ (instancetype)summaryItemWithLabel:(NSString *)label amount: (NSDecimalNumber *)amount;
- (instancetype)initWithLabel:(NSString *)aLabelString amount: (NSDecimalNumber *)theAmount;

@end
