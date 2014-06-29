//
//  LoginOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-29.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "LoginOperation.h"
#import "LoginResponse.h"

@implementation LoginOperation

- (id)initWithUsername:(NSString *)aUsername andPassword:(NSString *)aPassword{
    if (self = [super init]) {
        self.loginInfo = aUsername;
        self.password = aPassword;
    }
    
    return self;
}

- (NSString *)relativePathForRequest{
    return @"/ehome/login";
}

- (Class)prototypeForResponse{
    return [LoginResponse class];
}

- (ASIHTTPRequest *)createRequest{
    NSDictionary * params= [[NSDictionary alloc] initWithObjectsAndKeys:
                            self.loginInfo, @"loginInfo",
                            self.password, @"password",
                            nil];
    
    NSURL * url = [self makeGetApiUrl:self.requestSubUrl withParams:params];
    ASIHTTPRequest * request = [ASIHTTPRequest requestWithURL:url];
    
    [request setUserInfo:[NSDictionary dictionaryWithObject:self.requestSubUrl forKey:kRequestMetaData]];
    
    return request;
}

@end
