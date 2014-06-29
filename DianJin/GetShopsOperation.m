//
//  GetShopsOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-26.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "GetShopsOperation.h"
#import "QueryShopsResponse.h"

@implementation GetShopsOperation

- (id)initWithLongitude:(NSString *)longitude andLatitude:(NSString *)latitude{
    if (self = [super init]) {
        self.longitude = longitude;
        self.latitude = latitude;
        self.requestSubUrl = @"/ehome/product!loadCShopByDistance";
        self.responseCls = [QueryShopsResponse class];
    }
    
    return self;
}

- (ASIHTTPRequest *)createRequest {
    NSDictionary * params= [NSDictionary dictionaryWithObjectsAndKeys:self.longitude, @"longitude", self.latitude, @"latitude", nil];
    
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
//        QueryShopsResponse * homePageShops = [JDJsonDecoder objectForClass:[QueryShopsResponse class] withData:self.responseData options:0 error:&error];
//        self.shops = homePageShops.cShops;
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
