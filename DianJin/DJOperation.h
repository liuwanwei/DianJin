//
//  DJOperation.h
//  DianJin
//
//  Created by sungeo on 14-6-26.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "BaseOperation.h"
#import "NSMutableDictionary+SafeSetObject.h"

#define kRequestMetaData     @"request-type"

@class BaseResponse;

@interface DJOperation : BaseOperation

@property (nonatomic, copy) NSString * requestSubUrl;
@property (nonatomic, copy) NSString * requestMetaData;
@property (nonatomic, retain) NSData * responseData;

// 反馈数据
@property (nonatomic, strong) Class responseCls;
@property (nonatomic, strong) BaseResponse * response;

- (ASIHTTPRequest *)createGetRequestWithParam:(NSDictionary *)params;

// 派生类必须重写这两个函数，传递url路径和反馈包解析类原型。
- (NSString *)relativePathForRequest;
- (Class)prototypeForResponse;

- (void)initResponseForRequest:(ASIHTTPRequest *)request;

@end
