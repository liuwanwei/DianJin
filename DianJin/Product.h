//
//  Product.h
//  DianJin
//
//  Created by sungeo on 14-6-28.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QueryProductResponse.h"

// 这里将Product从QueryProductResponse派生，是个例外。
// 因为通信协议的原因，反馈的JSON数据中，直接将Product的属性放到JSON对象的第一维中。
// 为避免定义两遍Product，索性直接派生自QueryProductResponse，使用已定义好的属性。

@interface Product : QueryProductResponse

@end
