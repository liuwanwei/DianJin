//
//  GetNearbyShopsOperation.h
//  DianJin
//
//  Created by sungeo on 14-6-27.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "DJOperation.h"
#import "GetShopsOperation.h"

@interface GetNearbyShopsOperation : GetShopsOperation

@property (nonatomic) NSInteger radius;                 // [in]
@property (nonatomic) NSInteger trade;                  // [in]

//@property (nonatomic, strong) NSArray * shops;          // [out]

@end
