//
//  AddAttenOperation.m
//  DianJin
//
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "AddAttenOperation.h"
#import "BaseResponse.h"

@implementation AddAttenOperation

- (id)initWithUserId:(NSInteger)aUserId{
    if (self = [super init]) {
        self.userId = aUserId;
    }
    
    return self;
}

- (NSString *)relativePathForRequest{
    return @"/ehome/user/useratten!atten_add";
}

- (Class)prototypeForResponse{
    return [BaseResponse class];
}

- (ASIHTTPRequest *)createRequest{
    NSDictionary * params = [NSDictionary dictionaryWithObjectsAndKeys:
                             [NSString stringWithFormat:@"%d", self.userId], @"id",
                             nil];
    
    return [self createGetRequestWithParam:params];
}

@end
