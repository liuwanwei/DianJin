//
//  GetAllTradesOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-28.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "GetAllTradesOperation.h"
#import "QueryTradesResponse.h"
#import "JDJsonDecoder.h"

#define kSubUrl     @"/ehome/bussiness/trade!list1"

@implementation GetAllTradesOperation

- (ASIHTTPRequest *)createRequest {
    NSDictionary * params= [[NSDictionary alloc] init];
    
    NSURL * url = [self makeGetApiUrl:kSubUrl withParams:params];
    ASIHTTPRequest * request = [ASIHTTPRequest requestWithURL:url];
    
    [request setUserInfo:[NSDictionary dictionaryWithObject:kSubUrl forKey:kRequestMetaData]];
    
    return request;
}

- (void)requestDidFinish:(ASIHTTPRequest *)request {
    [super initResponseForRequest:request];
    
    if ([self.requestMetaData isEqualToString:kSubUrl]) {
        NSError * error = nil;
        QueryTradesResponse * trades = [JDJsonDecoder objectForClass:[QueryTradesResponse class] withData:self.responseData options:0 error:&error];
        self.allTrades = trades.trades;
        
        [self.delegate didSucceed:self];
    }
}

- (void)requestDidFail:(ASIHTTPRequest *)request {
    [super requestDidFail:request];
    [self.delegate didFail:self];
}


@end
