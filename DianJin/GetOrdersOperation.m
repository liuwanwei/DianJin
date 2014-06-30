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
    }
    
    return self;
}

- (NSString *)relativePathForRequest{
    return @"/ehome/myOrder/list";
}

- (Class)prototypeForResponse{
    return [QueryOrdersResponse class];
}

- (ASIHTTPRequest *)createRequest {
    NSDictionary * params= [[NSDictionary alloc] initWithObjectsAndKeys:
                            [NSString stringWithFormat:@"%d", self.orderStatus], @"status_num",
                            nil];

    return [self createGetRequestWithParam:params];
}

@end
