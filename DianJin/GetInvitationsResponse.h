//
//  GetInvitationsResponse.h
//  DianJin
//
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "BaseResponse.h"

@class Invitation;

@interface GetInvitationsResponse : BaseResponse

@property (nonatomic, copy) NSString * refreshDate;
@property (nonatomic, strong) NSArray * listInvitation;
@property (nonatomic, strong) Invitation * listInvitation__member;


@end
