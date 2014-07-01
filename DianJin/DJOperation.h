//
//  DJOperation.h
//  DianJin
//
//  Created by sungeo on 14-6-26.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "BaseOperation.h"
#import "NSMutableDictionary+SafeSetObject.h"

#define kRequestMetaData              @"request_type"

// 要上传的文件数据在本地NSDictionary中的key
#define kUploadFilename               @"upload_file_name_to_upload"

// 上传文件在POST协议中的key
#define kUploadFileFieldName          @"upload_file_field_name"

// 默认使用的上传文件名字（who cares？）
#define kRandomJPEGFilename           @"some_filename.jpeg"


@class BaseResponse;

@interface DJOperation : BaseOperation

@property (nonatomic, copy) NSString * requestSubUrl;

@property (nonatomic, copy) NSString * requestMetaData;

// 反馈数据
@property (nonatomic, retain) NSData * responseData;
 // 反馈包的解析类原型
@property (nonatomic, strong) Class responseCls;
@property (nonatomic, strong) BaseResponse * response;

- (ASIHTTPRequest *)createGetRequestWithParam:(NSDictionary *)params;
- (ASIHTTPRequest *)createPostRequestWithParam:(NSDictionary *)params;

// 派生类必须重写这两个函数，传递url路径和反馈包解析类原型。
- (NSString *)relativePathForRequest;
- (Class)prototypeForResponse;

- (void)initResponseForRequest:(ASIHTTPRequest *)request;

@end
