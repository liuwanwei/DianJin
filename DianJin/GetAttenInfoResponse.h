//
//  GetAttenInfoResponse.h
//  DianJin
//
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "BaseResponse.h"

@class User, Invitation;

@interface GetAttenInfoResponse : BaseResponse

@property (nonatomic, copy) NSString * isatten;         // 是否关注：“已关注”，“未关注”
@property (nonatomic, strong) User * user;
@property (nonatomic, strong) NSArray * invitations;
@property (nonatomic, strong) Invitation * invitations__member;

@end
