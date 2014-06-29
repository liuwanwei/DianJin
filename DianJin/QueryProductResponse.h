//
//  QueryProductResponse.h
//  DianJin
//
//  Created by sungeo on 14-6-29.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "BaseResponse.h"

@class ProductImg;

@interface QueryProductResponse : BaseResponse

@property (nonatomic) NSInteger id;
@property (nonatomic, copy) NSString * labelCn;
@property (nonatomic) NSInteger payType;
@property (nonatomic, copy) NSString * payTypeCn;
@property (nonatomic) double price;
@property (nonatomic, copy) NSString * priceDesc;
@property (nonatomic, copy) NSString * introduction;
@property (nonatomic, copy) NSString * descri;
@property (nonatomic) double channelPrice;
@property (nonatomic, copy) NSString * channelPriceDesc;
@property (nonatomic) NSInteger tradeId;
@property (nonatomic, copy) NSString * mktime;
@property (nonatomic, strong) NSArray * productImgs;
@property (nonatomic, strong) ProductImg * productImgs__member;


@end
