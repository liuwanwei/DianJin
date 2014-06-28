//
//  GetShopsByDistanceOperation.h
//  DianJin
//
//  Created by sungeo on 14-6-28.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "DJOperation.h"
#import "GetShopsOperation.h"


@interface GetShopsByDistanceOperation : GetShopsOperation

@property (nonatomic) NSInteger radius;             // [in, optional] 搜索半径
@property (nonatomic) NSInteger tradeId;            // [in, optional] 行业id
@property (nonatomic, copy) NSString * region;      // [in, optional] 城市

@end
