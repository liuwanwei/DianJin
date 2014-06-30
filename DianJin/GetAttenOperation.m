//
//  GetAttenOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "GetAttenOperation.h"
#import "GetAttenResponse.h"

@implementation GetAttenOperation

- (NSString *)relativePathForRequest{
    return @"/user/useratten!atten_list";
}

- (Class)prototypeForResponse{
    return [GetAttenResponse class];
}

- (ASIHTTPRequest *)createRequest{
    return [self createGetRequestWithParam:nil];
}

@end
