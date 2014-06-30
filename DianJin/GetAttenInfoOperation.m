//
//  GetAttenInfoOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "GetAttenInfoOperation.h"
#import "GetAttenInfoResponse.h"

@implementation GetAttenInfoOperation

- (id)initWithUserId:(NSInteger)aUserId{
    if (self = [super init]) {
        self.userId = aUserId;
    }
    
    return self;
}

- (NSString *)relativePathForRequest{
    return @"/ehome/invitation/atten_info";
}

- (Class)prototypeForResponse{
    return [GetAttenInfoResponse class];
}

- (ASIHTTPRequest *)createRequest{
    NSDictionary * params = [NSDictionary dictionaryWithObjectsAndKeys:
                             [NSString stringWithFormat:@"%d", self.userId], @"id",
                             nil];
    
    return [self createGetRequestWithParam:params];
}

@end
