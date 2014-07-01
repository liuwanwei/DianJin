//
//  AddInvitationOperation.h
//  DianJin
//
//  Created by sungeo on 14-7-1.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "DJOperation.h"

@interface AddInvitationOperation : DJOperation

@property (nonatomic, copy) NSString * labelCn;     // [in / optional] 主题
@property (nonatomic, copy) NSString * content;     // [in]
@property (nonatomic, copy) NSString * longitude;   // [in]
@property (nonatomic, copy) NSString * latitude;    // [in]
@property (nonatomic, strong) NSArray * imgs;       // [in / optional] 图片列表
@property (nonatomic) NSInteger level;              // [in / optional] 帖子等级
@property (nonatomic) NSInteger trade;              // [in / optional] 行业，一般为用户行业

@end
