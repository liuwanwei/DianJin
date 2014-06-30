//
//  AppDelegate.m
//  DianJin
//
//  Created by sungeo on 14-5-31.
//  Copyright (c) 2014年 DianJinTec. All rights reserved.
//

#import "AppDelegate.h"

#import <ASIHTTPRequest.h>

#import "GetShopsOperation.h"
#import "GetNearbyShopsOperation.h"
#import "GetAllTradesOperation.h"
#import "GetShopsByDistanceOperation.h"
#import "GetShopsByTimeOperation.h"
#import "SearchOperation.h"
#import "GetOrdersOperation.h"
#import "LoginOperation.h"
#import "GetProductOperation.h"

@implementation AppDelegate

- (void)didSucceed:(BaseOperation *)operation{
    NSLog(@"succeed");
    
    if ([operation isKindOfClass:[LoginOperation class]]) {
        static GetOrdersOperation * op1;
        op1 = [[GetOrdersOperation alloc] initWithOrderStatus:0];
        
        [op1 startRequest:self];
        NSLog(@"请求获取订单");
    }
}

- (void)didFail:(BaseOperation *)operation{
    NSLog(@"failed");
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    static GetNearbyShopsOperation * op;
//    op = [[GetNearbyShopsOperation alloc] init];
//    op.longitude = @"113.7";
//    op.latitude = @"37.5";
//    op.radius = 100000;
//    op.trade = 1;
    
//    static GetAllTradesOperation * op;
//    op = [[GetAllTradesOperation alloc] init];
    
//    static GetShopsByTimeOperation * op;
//    op = [[GetShopsByTimeOperation alloc] initWithLongitude:@"113.5" andLatitude:@"34.5"];
    
//    static SearchOperation * op;
//    op = [[SearchOperation alloc] initWithType:kSearchTypeAll andName:@"E10"];
    
//    static LoginOperation * op;
//    op = [[LoginOperation alloc] initWithUsername:@"15188310655" andPassword:@"654321"];
    
    static GetProductOperation * op;
    op = [[GetProductOperation alloc] initWithProductId:10];
    
    [op startRequest:self];
    
    NSLog(@"start request");
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
