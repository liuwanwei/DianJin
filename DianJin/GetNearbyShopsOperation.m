//
//  GetNearbyShopsOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-27.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "GetNearbyShopsOperation.h"
#import "QueryNearbyShopsResponse.h"

@implementation GetNearbyShopsOperation

- (id)initWithLongitude:(NSString *)longitude andLatitude:(NSString *)latitude{
    if (self = [super initWithLongitude:longitude andLatitude:latitude]) {
        self.requestSubUrl = @"/ehome/shop/nearBy!nearByBaidu";
        self.responseCls = [QueryNearbyShopsResponse class];
    }
    
    return self;
}


- (ASIHTTPRequest *)createRequest {
    NSDictionary * params= [NSDictionary dictionaryWithObjectsAndKeys:
                            self.longitude, @"longitude",
                            self.latitude, @"latitude",
                            [NSString stringWithFormat:@"%d", self.radius], @"radius",
                            [NSString stringWithFormat:@"%d", self.trade], @"trade", nil];
    
    return [self createGetRequestWithParam:params];
}

//- (void)requestDidFinish:(ASIHTTPRequest *)request {
//    [super initResponseForRequest:request];
//    
//    if ([self.requestMetaData isEqualToString:self.requestSubUrl]) {
//        NSError * error = nil;
//        QueryNearbyShopsResponse * nearbyShops = [JDJsonDecoder objectForClass:[QueryNearbyShopsResponse class] withData:self.responseData options:0 error:&error];
//        self.shops = nearbyShops.shops;
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
