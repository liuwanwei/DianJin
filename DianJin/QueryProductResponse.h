//
//  QueryProductResponse.h
//  DianJin
//
//  Created by sungeo on 14-6-29.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "BaseResponse.h"

@class Product;

@interface QueryProductResponse : BaseResponse

@property (nonatomic, strong) Product * product;

@end
