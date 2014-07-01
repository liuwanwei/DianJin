//
//  UploadFileOperation.m
//  DianJin
//
//  Created by sungeo on 14-7-1.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "UploadFileOperation.h"
#import "UploadFileResponse.h"

@implementation UploadFileOperation

- (id)initWithFilePath:(NSString *)aPath{
    if (self = [super init]) {
        self.filePath = aPath;
    }
    
    return self;
}

- (NSString *)relativePathForRequest{
    return @"/ehome_img/ImgUpload";
}

- (Class)prototypeForResponse{
    return [UploadFileResponse class];
}

- (ASIHTTPRequest *)createRequest{
    NSDictionary * dictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                 self.filePath, kUploadFilename,
                                 @"upload", kUploadFileFieldName,
                                 nil];
    
    return [self createPostRequestWithParam:dictionary];
}

@end
