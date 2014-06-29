//
//  SearchOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-28.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "SearchOperation.h"
#import "SearchResponse.h"

@implementation SearchOperation

- (id)initWithType:(NSString *)type andName:(NSString *)name{
    if (self = [super init]) {
        self.type = type;
        self.name = name;
    }
    
    return self;
}

- (ASIHTTPRequest *)createRequest {
    NSDictionary * params= [[NSDictionary alloc] initWithObjectsAndKeys:
                            self.type, @"type",
                            self.name, @"name",
                            nil];
    
    NSURL * url = [self makeGetApiUrl:self.requestSubUrl withParams:params];
    ASIHTTPRequest * request = [ASIHTTPRequest requestWithURL:url];
    
    [request setUserInfo:[NSDictionary dictionaryWithObject:self.requestSubUrl forKey:kRequestMetaData]];
    
    return request;
}

- (NSString *)relativePathForRequest{
    return @"/ehome/product!find";
}

- (Class)prototypeForResponse{
    return [SearchResponse class];
}

@end
