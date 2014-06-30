//
//  GetProductOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-29.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "GetProductOperation.h"
#import "QueryProductResponse.h"

@implementation GetProductOperation

- (id)initWithProductId:(NSInteger)anId{
    if (self = [super init]) {
        self.productId = anId;
    }
    
    return self;
}

- (ASIHTTPRequest *)createRequest{
    NSDictionary * params= [[NSDictionary alloc] initWithObjectsAndKeys:
                            [NSString stringWithFormat:@"%d", self.productId], @"id",
                            nil];
    
    
    return [self createGetRequestWithParam:params];
}

- (NSString *)relativePathForRequest{
    return @"/ehome/product!load";
}

- (Class)prototypeForResponse{
    return [QueryProductResponse class];
}

@end
