//
//  ReplyResponse.h
//  DianJin
//
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "BaseResponse.h"

@class Reply;

@interface ReplyResponse : BaseResponse

@property (nonatomic, strong) Reply * reply;

@end
