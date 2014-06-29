//
//  GetProductOperation.h
//  DianJin
//
//  Created by sungeo on 14-6-29.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "DJOperation.h"

@interface GetProductOperation : DJOperation

@property (nonatomic) NSInteger  productId;         // [in]

- (id)initWithProductId:(NSInteger) anId;

@end
