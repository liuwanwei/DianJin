//
//  LoginOperation.h
//  DianJin
//
//  Created by sungeo on 14-6-29.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "DJOperation.h"

@interface LoginOperation : DJOperation

@property (nonatomic, copy) NSString * loginInfo;       // [in] 用户名，手机号
@property (nonatomic, copy) NSString * password;        // [in]
@property (nonatomic, copy) NSString * user_id;         // [in] 百度推送用（怎么用不详）

- (id)initWithUsername:(NSString *)aUsername andPassword:(NSString *)aPassword;

@end
