//
//  CancelAttenOperation.h
//  DianJin
//  取消关注
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "DJOperation.h"

@interface CancelAttenOperation : DJOperation

@property (nonatomic) NSInteger userId;

- (id)initWithUserId:(NSInteger)aUserId;

@end
