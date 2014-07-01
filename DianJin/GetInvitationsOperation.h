//
//  GetInvitationsOperation.h
//  DianJin
//  获取行业圈
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "DJOperation.h"

@interface GetInvitationsOperation : DJOperation

@property (nonatomic) NSInteger trade;          // [in] 行业id

- (id)initWithTrade:(NSInteger)aTrade;

@end
