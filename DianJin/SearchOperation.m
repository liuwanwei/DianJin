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
        self.requestSubUrl = @"/ehome/product!find";
        self.responseCls = [SearchResponse class];
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

//- (void)requestDidFinish:(ASIHTTPRequest *)request {
//    [super initResponseForRequest:request];
//    
//    if ([self.requestMetaData isEqualToString:self.requestSubUrl]) {
//        NSError * error = nil;
//        self.response = [JDJsonDecoder objectForClass:self.responseCls withData:self.responseData options:0 error:&error];
//        
//        [self.delegate didSucceed:self];
//    }
//}
//
//- (void)requestDidFail:(ASIHTTPRequest *)request {
//    [super requestDidFail:request];
//    [self.delegate didFail:self];
//}


@end
