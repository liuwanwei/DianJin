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

- (id)init{
    if (self = [super init]) {
        self.requestSubUrl = @"/ehome/bussiness/trade!list1";
        self.responseCls = [QueryTradesResponse class];
    }
    
    return self;
}

- (ASIHTTPRequest *)createRequest {
    NSDictionary * params= [[NSDictionary alloc] init];
    
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
//        QueryTradesResponse * trades = [JDJsonDecoder objectForClass:[QueryTradesResponse class] withData:self.responseData options:0 error:&error];
//        self.allTrades = trades.trades;
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
