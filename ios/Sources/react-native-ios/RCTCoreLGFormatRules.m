// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from amount.djinni

#import "RCTCoreLGFormatRules.h"
#import "LGFormatRules.h"

@implementation RCTCoreLGFormatRules

//Export module
RCT_EXPORT_MODULE(RCTCoreLGFormatRules)

@synthesize bridge = _bridge;
-(instancetype)init
{
    self = [super init];
    //Init Objc implementation
    if(self)
    {
        self.objcImplementations = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (BOOL)requiresMainQueueSetup
{
    return NO;
}
RCT_REMAP_METHOD(release, release:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGFormatRules::release, first argument should be an instance of LGFormatRules", nil);
    }
    [self.objcImplementations removeObjectForKey:currentInstance[@"uid"]];
    resolve(@(YES));
}
RCT_REMAP_METHOD(log, logWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    NSMutableArray *uuids = [[NSMutableArray alloc] init];
    for (id key in self.objcImplementations)
    {
        [uuids addObject:key];
    }
    NSDictionary *result = @{@"value" : uuids};
    resolve(result);
}
RCT_REMAP_METHOD(flush, flushWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self.objcImplementations removeAllObjects];
    resolve(@(YES));
}
RCT_REMAP_METHOD(init, initWithRoundingMode:(int)roundingMode
                        maxNumberOfDecimals:(int)maxNumberOfDecimals withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {


    LGFormatRules * finalResult = [[LGFormatRules alloc] initWithRoundingMode:(LGRoundingMode)roundingMode maxNumberOfDecimals:maxNumberOfDecimals];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGFormatRules *rctImpl = (RCTCoreLGFormatRules *)[self.bridge moduleForName:@"CoreLGFormatRules"];
    [rctImpl.objcImplementations setObject:finalResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGFormatRules", @"uid" : uuid };
    if (result)
    {
        resolve(result);
    }
}

RCT_REMAP_METHOD(getRoundingMode, getRoundingMode:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGFormatRules *objcImpl = (LGFormatRules *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : @((int)objcImpl.roundingMode)};
    resolve(result);
}

RCT_REMAP_METHOD(getMaxNumberOfDecimals, getMaxNumberOfDecimals:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGFormatRules *objcImpl = (LGFormatRules *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : @((int)objcImpl.maxNumberOfDecimals)};
    resolve(result);
}

@end
