//
//  GetAllTradesOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-28.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "GetAllTradesOperation.h"
#import "QueryTradesResponse.h"

@implementation GetAllTradesOperation

- (NSString *)relativePathForRequest{
    return @"/ehome/bussiness/trade!list1";
}

- (Class)prototypeForResponse{
    return [QueryTradesResponse class];
}

- (ASIHTTPRequest *)createRequest {
    NSDictionary * params= [[NSDictionary alloc] init];
    
    return [self createGetRequestWithParam:params];
}

@end
