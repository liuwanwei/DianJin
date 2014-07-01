//
//  UploadFileOperation.h
//  DianJin
//
//  Created by sungeo on 14-7-1.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "DJOperation.h"

@interface UploadFileOperation : DJOperation

@property (nonatomic, copy) NSString * filePath;

- (id)initWithFilePath:(NSString *)aPath;

@end
