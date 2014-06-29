//
//  GetOrdersOperation.h
//  DianJin
//
//  Created by sungeo on 14-6-29.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "DJOperation.h"

@interface GetOrdersOperation : DJOperation

@property (nonatomic) NSInteger orderStatus;        // [in]
//@property (nonatomic, strong) NSArray * orders;     // [out]

- (id)initWithOrderStatus:(NSInteger) theStatus;

@end
