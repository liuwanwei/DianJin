//
//  GetShopsByDistanceOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-28.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "GetShopsByDistanceOperation.h"
#import "QueryShopsResponse.h"
#import "JDJsonDecoder.h"

#define kSubUrl     @"/ehome/product!loadShopByDis"

@implementation GetShopsByDistanceOperation


- (ASIHTTPRequest *)createRequest {
    NSMutableDictionary * params = [[NSMutableDictionary alloc] init];
    [params safeSetObject:self.longitude forKey:@"longitude"];
    [params safeSetObject:self.latitude forKey:@"latitude"];
    [params safeSetIntObject:self.radius forKey:@"radius"];
    [params safeSetIntObject:self.tradeId forKey:@"tradeId"];
    [params safeSetObject:self.region forKey:@"region"];
    
    NSURL * url = [self makeGetApiUrl:kSubUrl withParams:params];
    ASIHTTPRequest * request = [ASIHTTPRequest requestWithURL:url];
    
    [request setUserInfo:[NSDictionary dictionaryWithObject:kSubUrl forKey:kRequestMetaData]];
    
    return request;
}

- (void)requestDidFinish:(ASIHTTPRequest *)request {
    [super initResponseForRequest:request];
    
    if ([self.requestMetaData isEqualToString:kSubUrl]) {
        NSError * error = nil;
        QueryShopsResponse * queryShopsResponse = [JDJsonDecoder objectForClass:[QueryShopsResponse class] withData:self.responseData options:0 error:&error];
        self.shops = queryShopsResponse.cShops;
        
        [self.delegate didSucceed:self];
    }
}

- (void)requestDidFail:(ASIHTTPRequest *)request {
    [super requestDidFail:request];
    [self.delegate didFail:self];
}


@end
