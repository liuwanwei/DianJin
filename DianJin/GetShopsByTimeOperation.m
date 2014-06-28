//
//  GetShopsByTimeOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-28.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "GetShopsByTimeOperation.h"

#define kSubUrl

@implementation GetShopsByTimeOperation

- (id)initWithLongitude:(NSString *)longitude andLatitude:(NSString *)latitude{
    if (self = [super initWithLongitude:longitude andLatitude:latitude]) {
        self.requestSubUrl = @"/ehome/product!loadShopByT";
    }
    
    return self;
}

- (ASIHTTPRequest *)createRequest {
    NSMutableDictionary * params = [[NSMutableDictionary alloc] init];
    [params safeSetObject:self.longitude forKey:@"longitude"];
    [params safeSetObject:self.latitude forKey:@"latitude"];
    [params safeSetIntObject:self.radius forKey:@"radius"];
    [params safeSetIntObject:self.tradeId forKey:@"tradeId"];
    [params safeSetObject:self.region forKey:@"region"];
    
    NSURL * url = [self makeGetApiUrl:self.requestSubUrl withParams:params];
    ASIHTTPRequest * request = [ASIHTTPRequest requestWithURL:url];
    
    [request setUserInfo:[NSDictionary dictionaryWithObject:self.requestSubUrl forKey:kRequestMetaData]];
    
    return request;
}

@end
