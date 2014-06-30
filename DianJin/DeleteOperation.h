//
//  DeleteOperation.h
//  DianJin
//  删除帖子
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "DJOperation.h"

@interface DeleteOperation : DJOperation

@property (nonatomic) NSInteger invitationId;

- (id)initWithInvitation:(NSInteger) anId;

@end
