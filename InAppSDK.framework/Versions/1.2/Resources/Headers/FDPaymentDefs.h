//
//  FDPaymentDefs.h
//  FDLibSDK
//
//  Copyright (c) 2014 First Data Corporation. All rights reserved.
//

typedef NS_OPTIONS(NSUInteger, FDAddressField) {
    // No address fields required
    FDAddressFieldNone = 0UL,
    
    // Full street address required
    FDAddressFieldPostalAddress = 1UL << 0,
    
    // Phone number required
    FDAddressFieldPhone = 1UL << 1,
    
    // email address required
    FDAddressFieldEmail = 1UL << 2,
    
    // All of the above
    FDAddressFieldAll = (FDAddressFieldPostalAddress | FDAddressFieldPhone | FDAddressFieldEmail)
};

typedef NS_ENUM(NSInteger, FDPaymentAuthorizationStatus) {
    FDPaymentAuthorizationStatusSuccess,
    FDPaymentAuthorizationStatusFailure,
    FDPaymentAuthorizationStatusInvalidBillingPostalAddress,    // Merchant refuses service to this billing address.
    FDPaymentAuthorizationStatusInvalidShippingPostalAddress,   // Merchant refuses service to this shipping address.
    FDPaymentAuthorizationStatusInvalidShippingContact          // Supplied contact information is insufficient.
    
} NS_ENUM_AVAILABLE(NA, 8_0);

typedef enum {
    FDPaymentValidationStatusSuccess,
    FDPaymentValidationStatusFailure,
    FDPaymentValidationStatusInvalidBillingPostalAddress,       // Merchant refuses service to this billing address.
    FDPaymentValidationStatusInvalidShippingPostalAddress,      // Merchant refuses service to this shipping address.
    FDPaymentValidationStatusInvalidShippingContact             // Supplied contact information is insufficient.
    
} FDPaymentValidationStatus;

typedef enum {
    FDPurchase,
    FDPreAuthorization
} FDPaymentType;

typedef enum{
    FDMerchantCapability3DS = 1UL << 0,
    FDMerchantCapability3EMV = 1UL << 1
} FDMerchantCapability;

typedef NS_ENUM(NSUInteger, FDPaymentSummaryItemType) {
    FDPaymentSummaryItemTypeFinal,      // The payment summary item's amount is known to be correct
    FDPaymentSummaryItemTypePending     // The payment summary item's amount is estimated or unknown - e.g, a taxi fare
} NS_ENUM_AVAILABLE(NA, 9_0);


#define FDPaymentNetworkVisa @"Visa"
#define FDPaymentNetworkMasterCard  @"MasterCard"
#define FDPaymentNetworkAmericanExpress @"AmEx"
#define FDPaymentNetworkDiscover @"Discover"
