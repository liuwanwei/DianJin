//
//  Reply.h
//  DianJin
//  帖子回复信息对象
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import <Foundation/Foundation.h>

@class  User;

@interface Reply : NSObject

@property (nonatomic) NSInteger id;
@property (nonatomic, copy) NSString * content;
@property (nonatomic, copy) NSString * mktime;
@property (nonatomic, strong) User * user;          // 回复人的信息

@end
