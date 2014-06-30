//
//  ReplyOperation.h
//  DianJin
//  回复帖子评论
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "DJOperation.h"

@interface ReplyOperation : DJOperation

@property (nonatomic) NSInteger invitationId;   // [in] 所评论帖子id
@property (nonatomic, copy) NSString * content; // [in]
@property (nonatomic) NSInteger replyId;        // [in] 要回复的评论id

- (id)initWithInvitation:(NSInteger)anId andContent:(NSString *)aContent andReply:(NSInteger)aReplyId;

@end
