//
//  SearchOperation.h
//  DianJin
//
//  Created by sungeo on 14-6-28.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "DJOperation.h"

#define kSearchTypeProduct      @"p"
#define kSearchTypeShop         @"s"
#define kSearchTypeActivity     @"a"
#define kSearchTypeCircle       @"i"
#define kSearchTypeAll          @"all"

@interface SearchOperation : DJOperation

@property (nonatomic, copy) NSString * type;        // [in]
@property (nonatomic, copy) NSString * name;        // [in]

@property (nonatomic, strong) NSArray * products;   // [out]
@property (nonatomic, strong) NSArray * shops;      // [out]

- (id)initWithType:(NSString *)type andName:(NSString *)name;

@end
