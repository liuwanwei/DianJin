//
//  DJOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-26.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "DJOperation.h"

@implementation DJOperation

// 点近需要每个API都要传format参数过去。
- (NSURL *)makeGetApiUrl:(NSString *)subUrl withParams:(NSDictionary *)params{
    NSMutableDictionary * djParams = [NSMutableDictionary dictionaryWithDictionary:params];
    [djParams setObject:@"json" forKey:@"format"];
    
    return [super makeGetApiUrl:subUrl withParams:djParams];
}

- (void)initResponseForRequest:(ASIHTTPRequest *)request{
    self.requestMetaData = [request.userInfo objectForKey:kRequestMetaData];
    
    self.responseData = [request responseData];
}

@end
