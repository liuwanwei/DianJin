//
//  AddAttenOperation.h
//  DianJin
//
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "DJOperation.h"

@interface AddAttenOperation : DJOperation

@property (nonatomic) NSInteger userId;

- (id)initWithUserId:(NSInteger) aUserId;

@end
