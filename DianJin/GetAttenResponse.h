//
//  GetAttenResponse.h
//  DianJin
//
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "BaseResponse.h"

@class User;

@interface GetAttenResponse : BaseResponse

@property (nonatomic, strong) NSArray * attenlist;
@property (nonatomic, strong) User * attenlist__member;

@end
