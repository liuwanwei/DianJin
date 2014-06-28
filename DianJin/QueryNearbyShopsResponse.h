//
//  NearbyShops.h
//  DianJin
//
//  Created by sungeo on 14-6-27.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "BaseResponse.h"

@class Shop;

@interface QueryNearbyShopsResponse : BaseResponse

@property (nonatomic, strong) NSArray * shops;
@property (nonatomic, strong) Shop * shops__member;    // 用来描述cShops的成员类型


@end
