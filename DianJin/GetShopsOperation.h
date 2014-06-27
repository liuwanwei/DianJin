//
//  GetShopsOperation.h
//  DianJin
//
//  Created by sungeo on 14-6-26.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "DJOperation.h"

@interface GetShopsOperation : DJOperation

@property (nonatomic, copy) NSString * longitude;       // [in]
@property (nonatomic, copy) NSString * latitude;        // [in]
@property (nonatomic, retain) NSArray * shops;          // [out]

- (id)initWithLongitude:(NSString *)longitude andLatitude:(NSString *)latitude;

@end
