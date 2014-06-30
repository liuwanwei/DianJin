//
//  GetInvitationsOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "GetInvitationsOperation.h"
#import "GetInvitationsResponse.h"

@implementation GetInvitationsOperation


- (id)initWithTrade:(NSInteger)aTrade{
    if (self = [super init]) {
        self.trade = aTrade;
    }
    
    return self;
}


- (NSString *)relativePathForRequest{
    return @"/ehome/invitation/list";
}

- (Class)prototypeForResponse{
    return [GetInvitationsResponse class];
}

- (ASIHTTPRequest *)createRequest{
    NSDictionary * params = [NSDictionary dictionaryWithObjectsAndKeys:
                             [NSString stringWithFormat:@"%d", self.trade], @"trade",
                             nil];
    
    return [self createGetRequestWithParam:params];
}

@end
