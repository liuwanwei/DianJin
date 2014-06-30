//
//  InvitationImg.h
//  DianJin
//  帖子图片对象
//  Created by sungeo on 14-6-30.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InvitationImg : NSObject

@property (nonatomic) NSInteger id;
@property (nonatomic) NSInteger cId;        // 产品一级类别对象主键
@property (nonatomic, copy) NSString * imgUrl;
@property (nonatomic) NSInteger width;
@property (nonatomic) NSInteger height;


@end
