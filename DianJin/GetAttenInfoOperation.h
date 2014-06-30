//
//  GetAttenInfoOperation.h
//  DianJin
//  获取关注用户的信息
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "DJOperation.h"

@interface GetAttenInfoOperation : DJOperation

@property (nonatomic) NSInteger userId;

- (id)initWithUserId:(NSInteger)aUserId;

@end
