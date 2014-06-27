//
//  Shop.h
//  DianJin
//
//  Created by sungeo on 14-6-26.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shop : NSObject

@property (nonatomic) int id;
@property (nonatomic, copy) NSString * icon;
@property (nonatomic, copy) NSString * labelCn;
@property (nonatomic, copy) NSString * label;
@property (nonatomic, copy) NSString * longitude;
@property (nonatomic, copy) NSString * latitude;
@property (nonatomic) int distance;
@property (nonatomic) BOOL activity;
@property (nonatomic, copy) NSString * caseImg;
@property (nonatomic, copy) NSString * activityImg;

@end
