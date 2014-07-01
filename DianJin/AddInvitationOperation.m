//
//  AddInvitationOperation.m
//  DianJin
//
//  Created by sungeo on 14-7-1.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "AddInvitationOperation.h"
#import "BaseResponse.h"
#import <JSONKit.h>

@implementation AddInvitationOperation

- (NSString *)relativePathForRequest{
    return @"/ehome/invitation/publishContent";
}

- (Class)prototypeForResponse{
    return [BaseResponse class];
}

- (ASIHTTPRequest *)createRequest{
    NSMutableDictionary * params = [[NSMutableDictionary alloc] init];
    [params safeSetObject:self.labelCn forKey:@"labelCn"];
    [params safeSetObject:self.content forKey:@"content"];
    [params safeSetObject:self.longitude forKey:@"longitude"];
    [params safeSetObject:self.latitude forKey:@"latitude"];
    [params safeSetInteger:self.level forKey:@"level"];
    [params safeSetInteger:self.trade forKey:@"trade"];
    
    if (self.imgs != nil && self.imgs.count != 0) {
        NSString * jsonData = [self.imgs JSONString];
        [params safeSetObject:jsonData forKey:@"imgs"];
    }
    
    return [self createPostRequestWithParam:params];
}

@end
