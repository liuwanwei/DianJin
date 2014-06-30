//
//  DeleteOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "DeleteOperation.h"
#import "BaseResponse.h"

@implementation DeleteOperation

- (id)initWithInvitation:(NSInteger)anId{
    if (self = [super init]) {
        self.invitationId = anId;
    }
    
    return self;
}

- (NSString *)relativePathForRequest{
    return @"/ehome/invitation/del";
}

- (Class)prototypeForResponse{
    return [BaseResponse class];
}

- (ASIHTTPRequest *)createRequest{
    NSDictionary * params = [NSDictionary dictionaryWithObjectsAndKeys:
                             [NSString stringWithFormat:@"%d", self.invitationId], @"id",
                             nil];
    return [self createGetRequestWithParam:params];
}

@end
