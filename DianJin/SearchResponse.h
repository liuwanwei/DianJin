//
//  SearchResponse.h
//  DianJin 模糊搜索产品/店面反馈
//
//  Created by sungeo on 14-6-28.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "BaseResponse.h"

@class Shop;
@class Product;
//@class Activity;
//@class Invitation;

@interface SearchResponse : BaseResponse

@property (nonatomic, strong) NSArray * shops;
@property (nonatomic, strong) Shop * shops__member;

@property (nonatomic, strong) NSArray * cProducts;
@property (nonatomic, strong) Product * cProducts__member;

//@property (nonatomic, strong) NSArray * shopActivitys;
//@property (nonatomic, strong) Activity * shopActivitys__member;
//
//@property (nonatomic, strong) NSArray * invitations;
//@property (nonatomic, strong) Invitation * invitations__member;

@end
