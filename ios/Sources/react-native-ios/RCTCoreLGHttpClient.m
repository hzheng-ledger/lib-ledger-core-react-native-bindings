// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http_client.djinni

#import "RCTCoreLGHttpClient.h"


@implementation RCTCoreLGHttpClient
//Export module
RCT_EXPORT_MODULE(RCTCoreLGHttpClient)

@synthesize bridge = _bridge;


+ (BOOL)requiresMainQueueSetup
{
    return NO;
}
RCT_REMAP_METHOD(release, release:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseRelease:currentInstance withResolver: resolve rejecter:reject];
}
RCT_REMAP_METHOD(log, logWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseLogWithResolver:resolve rejecter:reject];
}
RCT_REMAP_METHOD(flush, flushWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseFlushWithResolver:resolve rejecter:reject];
}
RCT_REMAP_METHOD(isNull, isNull:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseIsNull:currentInstance withResolver:resolve rejecter:reject];
}

/**
 * Execute a giver Http request.
 * @param request, HttpRequest object, requestr to execute
 */
RCT_REMAP_METHOD(execute,execute:(NSDictionary *)currentInstance withParams:(NSDictionary *)request withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGHttpClient::execute, first argument should be an instance of LGHttpClientImpl", nil);
        return;
    }
    LGHttpClientImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGHttpClientImpl::execute, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGHttpRequest *rctParam_request = (RCTCoreLGHttpRequest *)[self.bridge moduleForName:@"CoreLGHttpRequest"];
    LGHttpRequest *objcParam_0 = (LGHttpRequest *)[rctParam_request.objcImplementations objectForKey:request[@"uid"]];
    [currentInstanceObj execute:objcParam_0];

}
RCT_REMAP_METHOD(newInstance, newInstanceWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    LGHttpClientImpl *objcResult = [[LGHttpClientImpl alloc] init];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    NSArray *resultArray = [[NSArray alloc] initWithObjects:objcResult, uuid, nil];
    [self baseSetObject:resultArray];
    NSDictionary *result = @{@"type" : @"CoreLGHttpClientImpl", @"uid" : uuid };
    if (!objcResult || !result)
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGHttpClientImpl::init", nil);
        return;
    }
    resolve(result);
}
@end
