//
//  HomePageShops.h
//  DianJin
//
//  Created by sungeo on 14-6-26.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "BaseResponse.h"

@class Shop;

@interface QueryShopsResponse : BaseResponse

@property (nonatomic, strong) NSArray * cShops;
@property (nonatomic, strong) Shop * cShops__member;    // 用来描述cShops的成员类型

@end
