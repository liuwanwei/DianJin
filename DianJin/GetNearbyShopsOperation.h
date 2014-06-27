//
//  GetNearbyShopsOperation.h
//  DianJin
//
//  Created by sungeo on 14-6-27.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "DJOperation.h"

@interface GetNearbyShopsOperation : DJOperation

@property (nonatomic, copy) NSString * longitude;       // [in]
@property (nonatomic, copy) NSString * latitude;        // [in]
@property (nonatomic) NSInteger radius;                 // [in]
@property (nonatomic) NSInteger trade;                  // [in]

@property (nonatomic, strong) NSArray * shops;          // [out]

@end
