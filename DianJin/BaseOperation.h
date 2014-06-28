//
//  BaseOperation.h
//  tang
//
//  Created by maoyu on 13-12-18.
//  Copyright (c) 2013年 diandi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASINetworkQueue.h"
#import "ASIFormDataRequest.h"

#define SUCCESS 0
#define ERROR -1
#define ERROR_EMPTY -2

#define LIMIT 18

typedef enum {
    StateWaiting = 0,
    StateFinished = 1
}State;

@protocol BaseOperationDelegate;

@interface BaseOperation : NSObject

@property (nonatomic, weak) id <BaseOperationDelegate> delegate;
@property (nonatomic) NSInteger code;
@property (nonatomic) State state;

- (BOOL)startRequest:(id <BaseOperationDelegate>)delegate;

- (ASIHTTPRequest *)createRequest;
- (void)requestDidFinish:(ASIHTTPRequest *)request;
- (void)requestDidFail:(ASIHTTPRequest *)request;

- (NSURL *)makeGetApiUrl:(NSString *)subUrl withParams:(NSDictionary *)params;
- (NSURL *)makePostApiUrl:(NSString *)subUrl;
- (NSDictionary *)getResultWithRequest:(ASIHTTPRequest *)request;
- (NSDictionary *)getBodyWithResult:(NSDictionary *)result;
- (NSInteger)getTotalWithBody:(NSDictionary *)body;
- (NSArray *)getRowsWithBody:(NSDictionary *)body;

@end

@protocol BaseOperationDelegate

- (void)didSucceed:(BaseOperation *)operation;
- (void)didFail:(BaseOperation *)operation;

@end