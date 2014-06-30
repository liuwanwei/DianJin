//
//  CommentOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "CommentOperation.h"
#import "BaseResponse.h"

@implementation CommentOperation

- (id)initWithInvitationId:(NSInteger)anId andContent:(NSString *)aContent{
    if (self = [super init]) {
        self.invitationId = anId;
        self.content = aContent;
    }
    
    return self;
}

- (NSString *)relativePathForRequest{
    return @"/ehome/invitation/reply";
}

- (Class)prototypeForResponse{
    return [BaseResponse class];
}

- (ASIHTTPRequest *)createRequest{
    NSDictionary * params = [NSDictionary dictionaryWithObjectsAndKeys:
                             [NSString stringWithFormat:@"%d", self.invitationId], @"id",
                             self.content, @"content",
                             nil];
    return [self createGetRequestWithParam:params];
}

@end
