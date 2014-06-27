//
//  GetShopsOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-26.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "GetShopsOperation.h"
#import "HomePageShops.h"
#import "JDJsonDecoder.h"

#define kSubUrl     @"/ehome/product!loadCShopByDistance"

@implementation GetShopsOperation

- (id)initWithLongitude:(NSString *)longitude andLatitude:(NSString *)latitude{
    if (self = [super init]) {
        self.longitude = longitude;
        self.latitude = latitude;
    }
    
    return self;
}

- (ASIHTTPRequest *)createRequest {
    NSDictionary * params= [NSDictionary dictionaryWithObjectsAndKeys:self.longitude, @"longitude", self.latitude, @"latitude", nil];
    
    NSURL * url = [self makeGetApiUrl:kSubUrl withParams:params];
    ASIHTTPRequest * request = [ASIHTTPRequest requestWithURL:url];
    
    [request setUserInfo:[NSDictionary dictionaryWithObject:kSubUrl forKey:kRequestMetaData]];
    
    return request;
}

- (void)requestDidFinish:(ASIHTTPRequest *)request {
    [super initResponseForRequest:request];
    
    if ([self.requestMetaData isEqualToString:kSubUrl]) {
        NSError * error = nil;
        HomePageShops * homePageShops = [JDJsonDecoder objectForClass:[HomePageShops class] withData:self.responseData options:0 error:&error];
        self.shops = homePageShops.cShops;
        
        [self.delegate didSucceed:self];
    }
}

- (void)requestDidFail:(ASIHTTPRequest *)request {
    [super requestDidFail:request];
    [self.delegate didFail:self];
}

@end
