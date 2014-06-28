//
//  Trade.h
//  DianJin
//
//  Created by sungeo on 14-6-28.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Trade : NSObject

@property (nonatomic) NSInteger id;
@property (nonatomic, copy) NSString * labelCn;
@property (nonatomic) NSInteger tradeId;
@property (nonatomic) NSInteger weight;

@property (nonatomic, strong) NSArray * tradeItems;
@property (nonatomic, strong) Trade * tradeItems__member;

@end
