//
//  SearchOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-28.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "SearchOperation.h"
#import "SearchResponse.h"

@implementation SearchOperation

- (id)initWithType:(NSString *)type andName:(NSString *)name{
    if (self = [super init]) {
        self.type = type;
        self.name = name;
        self.requestSubUrl = @"/ehome/product!find";
    }
    
    return self;
}

- (ASIHTTPRequest *)createRequest {
    NSDictionary * params= [[NSDictionary alloc] initWithObjectsAndKeys:
                            self.type, @"type",
                            self.name, @"name",
                            nil];
    
    NSURL * url = [self makeGetApiUrl:self.requestSubUrl withParams:params];
    ASIHTTPRequest * request = [ASIHTTPRequest requestWithURL:url];
    
    [request setUserInfo:[NSDictionary dictionaryWithObject:self.requestSubUrl forKey:kRequestMetaData]];
    
    return request;
}

- (void)requestDidFinish:(ASIHTTPRequest *)request {
    [super initResponseForRequest:request];
    
    if ([self.requestMetaData isEqualToString:self.requestSubUrl]) {
        NSError * error = nil;
        SearchResponse * response = [JDJsonDecoder objectForClass:[SearchResponse class] withData:self.responseData options:0 error:&error];
        self.products = response.cProducts;
        self.shops = response.shops;
        
        [self.delegate didSucceed:self];
    }
}

- (void)requestDidFail:(ASIHTTPRequest *)request {
    [super requestDidFail:request];
    [self.delegate didFail:self];
}


@end
