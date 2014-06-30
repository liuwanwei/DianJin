//
//  Invatation.h
//  DianJin
//  行业圈发表的帖子对象
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import <Foundation/Foundation.h>

@class  User, InvitationImg, Reply;

@interface Invitation : NSObject

@property (nonatomic) NSInteger id;
@property (nonatomic, copy) NSString * labelCn;         // 帖子主题
@property (nonatomic, copy) NSString * content;
@property (nonatomic, copy) NSString * city;
@property (nonatomic, copy) NSString * district;        // 区
@property (nonatomic, copy) NSString * street;
@property (nonatomic) NSInteger distance;               //
@property (nonatomic) NSInteger count;                  // 回复数量
@property (nonatomic, copy) NSString * mktime;          // 发表时间
@property (nonatomic, strong) User * user;
@property (nonatomic, strong) NSArray * invitationImgList;  // 帖子图片合集
@property (nonatomic, strong) InvitationImg * invitationImgList__member;

@property (nonatomic, strong) NSArray * listReply;          // 帖子回复集合
@property (nonatomic, strong) Reply * listReply__member;

@end
