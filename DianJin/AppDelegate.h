//
//  AppDelegate.h
//  DianJin
//
//  Created by sungeo on 14-5-31.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "GetShopsOperation.h"
#import "GetNearbyShopsOperation.h"
#import "GetAllTradesOperation.h"
#import "GetShopsByDistanceOperation.h"
#import "GetShopsByTimeOperation.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, BaseOperationDelegate>

@property (strong, nonatomic) UIWindow *window;

@end
