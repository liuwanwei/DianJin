//
//  ReplyOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "ReplyOperation.h"
#import "ReplyResponse.h"

@implementation ReplyOperation

- (id)initWithInvitation:(NSInteger)anId andContent:(NSString *)aContent andReply:(NSInteger)aReplyId{
    if (self = [super init]) {
        self.invitationId = anId;
        self.content = aContent;
        self.replyId = aReplyId;
    }
    
    return self;
}

- (NSString *)relativePathForRequest{
    return @"/ehome/invitation/reply";
}

- (Class)prototypeForResponse{
    return [ReplyResponse class];
}

- (ASIHTTPRequest *)createRequest{
    NSDictionary * params = [NSDictionary dictionaryWithObjectsAndKeys:
                             [NSString stringWithFormat:@"%d", self.invitationId], @"id",
                             self.content, @"content",
                             [NSString stringWithFormat:@"%d", self.replyId], @"reply_id",
                             nil];
    
    return [self createGetRequestWithParam:params];
}

@end
