//
//  Order.h
//  DianJin
//
//  Created by sungeo on 14-6-28.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RecInfo, User, OrderItem;

@interface Order : NSObject

@property (nonatomic) NSInteger id;
@property (nonatomic) NSInteger orderId;
@property (nonatomic) NSInteger statusNum;
@property (nonatomic, copy) NSString * status;
@property (nonatomic, copy) NSString * mktime;
@property (nonatomic) double allPrice;
@property (nonatomic, copy) NSString * payTypeCn;
@property (nonatomic, copy) NSString * sendTypeCn;
@property (nonatomic, strong) RecInfo * recInfo;
@property (nonatomic, strong) User * user;
@property (nonatomic, strong) NSArray * orderItems;
@property (nonatomic, strong) OrderItem * orderItems__member;
@property (nonatomic) NSInteger comment;

@end
