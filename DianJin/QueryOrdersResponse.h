//
//  QueryOrdersResponse.h
//  DianJin
//
//  Created by sungeo on 14-6-29.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "BaseResponse.h"

@class Order;

@interface QueryOrdersResponse : BaseResponse

@property (nonatomic, strong) NSArray * orders;
@property (nonatomic, strong) Order * orders__member;

@end
