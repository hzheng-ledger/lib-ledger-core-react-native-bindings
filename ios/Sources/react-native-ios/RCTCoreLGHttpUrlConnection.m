// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http_client.djinni

#import "RCTCoreLGHttpUrlConnection.h"


@implementation RCTCoreLGHttpUrlConnection
//Export module
RCT_EXPORT_MODULE(RCTCoreLGHttpUrlConnection)

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
 * Gets the HTTP response status code.
 * @return The HTTP response status code
 */
RCT_REMAP_METHOD(getStatusCode,getStatusCode:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGHttpUrlConnection::getStatusCode, first argument should be an instance of LGHttpUrlConnectionImpl", nil);
        return;
    }
    LGHttpUrlConnectionImpl *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGHttpUrlConnectionImpl::getStatusCode, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSInteger objcResult = [currentInstanceObj getStatusCode];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGHttpUrlConnectionImpl::getStatusCode", nil);
        return;
    }

}

/**
 * Gets the HTTP response status text.
 * @return The HTTP response status text
 */
RCT_REMAP_METHOD(getStatusText,getStatusText:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGHttpUrlConnection::getStatusText, first argument should be an instance of LGHttpUrlConnectionImpl", nil);
        return;
    }
    LGHttpUrlConnectionImpl *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGHttpUrlConnectionImpl::getStatusText, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj getStatusText];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGHttpUrlConnectionImpl::getStatusText", nil);
        return;
    }

}

/**
 * Gets the HTTP response headers.
 * @return The HTTP response headers
 */
RCT_REMAP_METHOD(getHeaders,getHeaders:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGHttpUrlConnection::getHeaders, first argument should be an instance of LGHttpUrlConnectionImpl", nil);
        return;
    }
    LGHttpUrlConnectionImpl *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGHttpUrlConnectionImpl::getHeaders, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSDictionary<NSString *, NSString *> * objcResult = [currentInstanceObj getHeaders];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGHttpUrlConnectionImpl::getHeaders", nil);
        return;
    }

}

/**
 * Reads available HTTP response body. This method will be called multiple times until it returns a empty bytes array.
 * @returns A chunk of the body data wrapped into a HttpReadBodyResult (for error management)
 */
RCT_REMAP_METHOD(readBody,readBody:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGHttpUrlConnection::readBody, first argument should be an instance of LGHttpUrlConnectionImpl", nil);
        return;
    }
    LGHttpUrlConnectionImpl *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGHttpUrlConnectionImpl::readBody, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGHttpReadBodyResult * objcResult = [currentInstanceObj readBody];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGHttpReadBodyResult *rctImpl_objcResult = (RCTCoreLGHttpReadBodyResult *)[self.bridge moduleForName:@"CoreLGHttpReadBodyResult"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGHttpReadBodyResult", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGHttpUrlConnectionImpl::readBody", nil);
        return;
    }

}
RCT_REMAP_METHOD(newInstance, newInstanceWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    LGHttpUrlConnectionImpl *objcResult = [[LGHttpUrlConnectionImpl alloc] init];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    NSArray *resultArray = [[NSArray alloc] initWithObjects:objcResult, uuid, nil];
    [self baseSetObject:resultArray];
    NSDictionary *result = @{@"type" : @"CoreLGHttpUrlConnectionImpl", @"uid" : uuid };
    if (!objcResult || !result)
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGHttpUrlConnectionImpl::init", nil);
        return;
    }
    resolve(result);
}
@end
