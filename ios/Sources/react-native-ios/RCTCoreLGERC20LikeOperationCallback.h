// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#import "LGERC20LikeOperation.h"
#import "LGERC20LikeOperationCallbackImpl.h"
#import "LGError.h"
#import "RCTCoreLGERC20LikeOperation.h"
#import "RCTCoreLGError.h"
#import <Foundation/Foundation.h>
#import <React/RCTBridge.h>
#import <React/RCTBridgeModule.h>


/** Callback triggered by main completed task, returning optional result of template type T. */
@interface RCTCoreLGERC20LikeOperationCallback : NSObject <LGERC20LikeOperationCallback>
@property (nonatomic, strong) RCTPromiseResolveBlock resolve;
@property (nonatomic, strong) RCTPromiseRejectBlock reject;
@property (nonatomic, weak) RCTBridge *bridge;
-(instancetype)initWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock) reject andBridge: (RCTBridge *) bridge;
@end