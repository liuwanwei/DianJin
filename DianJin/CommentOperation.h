//
//  CommentOperation.h
//  DianJin
//  评论帖子
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "DJOperation.h"

@interface CommentOperation : DJOperation

@property (nonatomic) NSInteger invitationId;           // [in] 帖子id
@property (nonatomic, copy) NSString * content;         // [in]

- (id)initWithInvitationId:(NSInteger)anId andContent:(NSString *)aContent;

@end
