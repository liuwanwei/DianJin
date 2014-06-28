//
//  AllTrades.h
//  DianJin
//
//  Created by sungeo on 14-6-28.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "BaseResponse.h"

@class Trade;

@interface AllTrades : BaseResponse

@property (nonatomic, strong) NSArray * trades;
@property (nonatomic, strong) Trade * trades__member;

@end
