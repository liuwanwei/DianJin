//
//  DJOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-26.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "DJOperation.h"
#import "JDJsonDecoder.h"

@implementation DJOperation

- (id)init{
    if (self = [super init]) {
        self.responseCls = [self prototypeForResponse];
        self.requestSubUrl = [self relativePathForRequest];
    }
    
    return self;
}

// 点近需要每个API都要传format参数过去。
- (NSURL *)makeGetApiUrl:(NSString *)subUrl withParams:(NSDictionary *)params{
    NSMutableDictionary * djParams = [NSMutableDictionary dictionaryWithDictionary:params];
    [djParams setObject:@"json" forKey:@"format"];
    
    return [super makeGetApiUrl:subUrl withParams:djParams];
}

- (void)initResponseForRequest:(ASIHTTPRequest *)request{
    self.requestMetaData = [request.userInfo objectForKey:kRequestMetaData];
    
    self.responseData = [request responseData];
}

- (ASIHTTPRequest *)createGetRequestWithParam:(NSDictionary *)params{
    NSURL * url = [self makeGetApiUrl:self.requestSubUrl withParams:params];
    ASIHTTPRequest * request = [ASIHTTPRequest requestWithURL:url];
    
    [request setUserInfo:[NSDictionary dictionaryWithObject:self.requestSubUrl forKey:kRequestMetaData]];
    
    return request;
}

- (void)requestDidFinish:(ASIHTTPRequest *)request {
    [self initResponseForRequest:request];
    
    if ([self.requestMetaData isEqualToString:self.requestSubUrl]) {
        NSError * error = nil;
        self.response = [JDJsonDecoder objectForClass:self.responseCls withData:self.responseData options:0 error:&error];
        
        [self.delegate didSucceed:self];
    }
}

- (void)requestDidFail:(ASIHTTPRequest *)request {
    [super requestDidFail:request];
    [self.delegate didFail:self];
}

- (NSString *)relativePathForRequest{
    [NSException raise:NSInternalInconsistencyException
                format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
    return nil;
}

- (Class)prototypeForResponse{
    [NSException raise:NSInternalInconsistencyException
                format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
    
    return nil;
}

@end
