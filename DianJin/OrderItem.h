//
//  OrderItem.h
//  DianJin
//
//  Created by sungeo on 14-6-28.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Product;

@interface OrderItem : NSObject

@property (nonatomic) NSInteger id;
@property (nonatomic, strong) Product * product;
@property (nonatomic) NSInteger productNumber;

@end
