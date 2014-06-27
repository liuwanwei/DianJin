//
//  BaseOperation.m
//
//  Created by maoyu on 13-12-18.
//  Copyright (c) 2013年 diandi. All rights reserved.
//

#import "BaseOperation.h"

#define ROOT_URL @"http://115.29.38.195:8080"
#define MakeApiUrl(subUrl,param)  [NSString stringWithFormat:@"%@%@?%@",ROOT_URL,subUrl,param]

#define HEAD @"head"
#define CODE @"code"
#define MSG @"msg"
#define BODY @"body"
#define TOTAL @"total"
#define ROWS @"rows"


@interface BaseOperation() {
    ASIHTTPRequest * _request;
}

@end

@implementation BaseOperation

#pragma 类成员函数
- (BOOL)startRequest:(id <BaseOperationDelegate>) delegate
{
    _request = [self createRequest];
    [_request setTimeOutSeconds:5.0f];
    
    self.delegate = delegate;
    self.state = StateWaiting;
    self.code = ERROR;
    
    ASINetworkQueue * networkQueue;
    networkQueue = [[ASINetworkQueue alloc] init];
    networkQueue.shouldCancelAllRequestsOnFailure = NO;
    networkQueue.maxConcurrentOperationCount = 1;
    networkQueue.delegate = self;
    [networkQueue setRequestDidFinishSelector:@selector(requestDidFinish:)];
    [networkQueue setRequestDidFailSelector:@selector(requestDidFail:)];
    
    [networkQueue addOperation:_request];
    [networkQueue go];
    
    return true;
}

- (ASIHTTPRequest *)createRequest {
    [NSException raise:NSInternalInconsistencyException
                format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
    
    return nil;
}

- (void)dealloc {
    [_request clearDelegatesAndCancel];
}


- (NSString *)makeKeyValuePair:(NSDictionary *)params{
    NSMutableString * pair = [[NSMutableString alloc] init];
    for (NSString * key in [params allKeys]) {
        NSString * value = [params objectForKey:key];
    }
}

// 根据参数和子URL生成GET请求时用到的最终API URL。
- (NSURL *)makeGetApiUrl:(NSString *)subUrl withParams:(NSDictionary *)params{
    NSString * paramString = [params JSONString];
    
    // OBJ-C的urlencode。Json出现在HTTP URL中时，需要编码成URL格式。
    paramString = (NSString *)
    CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,
                                                              (CFStringRef)paramString,
                                                              NULL,
                                                              NULL,
                                                              kCFStringEncodingUTF8));
   
    
    return [NSURL URLWithString:MakeApiUrl(subUrl, paramString)];
}

- (NSURL *)makePostApiUrl:(NSString *)subUrl {
    return [NSURL URLWithString:MakeApiUrl(subUrl,@"")];
}

- (NSDictionary *)getResultWithRequest:(ASIHTTPRequest *)request {
    self.state = StateFinished;
    
    NSDictionary * result = [[request responseData] objectFromJSONData];
    if (nil == result) {
        return nil;
    }
    
    NSDictionary * head = [result objectForKey:HEAD];
    self.code = [[head objectForKey:CODE] integerValue];
    
    if (SUCCESS == self.code || ERROR_EMPTY == self.code) {
        return result;
    }
    
    return nil;
}

- (NSDictionary *)getBodyWithResult:(NSDictionary *)result {
    return [result objectForKey:BODY];
}

- (NSInteger)getTotalWithBody:(NSDictionary *)body {
    return [[body objectForKey:TOTAL] integerValue];
}

- (NSArray *)getRowsWithBody:(NSDictionary *)body {
    return [body objectForKey:ROWS];
}

#pragma AsiNetWorkQueue delegate
- (void)requestDidFinish:(ASIHTTPRequest *)request {
    [NSException raise:NSInternalInconsistencyException
                format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
    
}

- (void)requestDidFail:(ASIHTTPRequest *)request {
    self.state = StateFinished;
}

@end
