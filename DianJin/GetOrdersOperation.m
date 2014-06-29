//
//  GetOrdersOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-29.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "GetOrdersOperation.h"
#import "QueryOrdersResponse.h"

@implementation GetOrdersOperation

- (id)initWithOrderStatus:(NSInteger)theStatus{
    if (self = [super init]) {
        self.orderStatus = theStatus;
        self.requestSubUrl = @"/ehome/myOrder/list";
        self.responseCls = [QueryOrdersResponse class];
    }
    
    return self;
}

- (ASIHTTPRequest *)createRequest {
    NSDictionary * params= [[NSDictionary alloc] initWithObjectsAndKeys:
                            [NSString stringWithFormat:@"%d", self.orderStatus], @"status_num",
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
//        QueryOrdersResponse * response = [JDJsonDecoder objectForClass:[QueryOrdersResponse class] withData:self.responseData options:0 error:&error];
//        self.orders = response.orders;
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
