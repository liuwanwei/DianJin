//
//  GetNearbyShopsOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-27.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "GetNearbyShopsOperation.h"
#import "NearbyShops.h"
#import "JDJsonDecoder.h"

#define kSubUrl     @"/ehome/shop/nearBy!nearByBaidu"

@implementation GetNearbyShopsOperation

- (ASIHTTPRequest *)createRequest {
    NSDictionary * params= [NSDictionary dictionaryWithObjectsAndKeys:
                            self.longitude, @"longitude",
                            self.latitude, @"latitude",
                            [NSString stringWithFormat:@"%d", self.radius], @"radius",
                            [NSString stringWithFormat:@"%d", self.trade], @"trade", nil];
    
    NSURL * url = [self makeGetApiUrl:kSubUrl withParams:params];
    ASIHTTPRequest * request = [ASIHTTPRequest requestWithURL:url];
    
    [request setUserInfo:[NSDictionary dictionaryWithObject:kSubUrl forKey:kRequestMetaData]];
    
    return request;
}

- (void)requestDidFinish:(ASIHTTPRequest *)request {
    [super initResponseForRequest:request];
    
    if ([self.requestMetaData isEqualToString:kSubUrl]) {
        NSError * error = nil;
        NearbyShops * nearbyShops = [JDJsonDecoder objectForClass:[NearbyShops class] withData:self.responseData options:0 error:&error];
        self.shops = nearbyShops.shops;
        
        [self.delegate didSucceed:self];
    }
}

- (void)requestDidFail:(ASIHTTPRequest *)request {
    [super requestDidFail:request];
    [self.delegate didFail:self];
}


@end
