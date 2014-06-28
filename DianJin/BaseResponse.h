//
//  BaseResponse.h
//  DianJin
//
//  Created by sungeo on 14-6-26.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "JDJsonDecoder.h"

@interface BaseResponse : NSObject

@property (nonatomic, copy) NSString * status;
@property (nonatomic, copy) NSString * message;

@end
