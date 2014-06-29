//
//  LoginResponse.h
//  DianJin
//
//  Created by sungeo on 14-6-29.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "BaseResponse.h"

@class  User;

@interface LoginResponse : BaseResponse

@property (nonatomic, strong) User * user;

@end
