//
//  User.h
//  DianJin
//
//  Created by sungeo on 14-6-28.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RecInfo;

@interface User : NSObject

@property (nonatomic, copy) NSString * username;
@property (nonatomic, copy) NSString * labelCn;
@property (nonatomic) NSInteger role;
@property (nonatomic, copy) NSString * phone;
@property (nonatomic, copy) NSString * mktime;          // 注册时间
@property (nonatomic, copy) NSString * icon;
@property (nonatomic) NSInteger iconWidth;
@property (nonatomic) NSInteger iconHeight;
@property (nonatomic, strong) RecInfo * defaultRecInfo;

@end
