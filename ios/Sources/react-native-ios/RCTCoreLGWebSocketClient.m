// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from websocket_client.djinni

#import "RCTCoreLGWebSocketClient.h"


@implementation RCTCoreLGWebSocketClient
//Export module
RCT_EXPORT_MODULE(RCTCoreLGWebSocketClient)

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
 * Connect to a given URL via a Web Socket connection.
 * @param url, the URL to connect to
 * @connection, the Web Socket connection to use
 */
RCT_REMAP_METHOD(connect,connect:(NSDictionary *)currentInstance withParams:(nonnull NSString *)url
                                                                 connection:(NSDictionary *)connection withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWebSocketClient::connect, first argument should be an instance of LGWebSocketClientImpl", nil);
        return;
    }
    LGWebSocketClientImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWebSocketClientImpl::connect, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGWebSocketConnection *rctParam_connection = (RCTCoreLGWebSocketConnection *)[self.bridge moduleForName:@"CoreLGWebSocketConnection"];
    LGWebSocketConnection *objcParam_1 = (LGWebSocketConnection *)[rctParam_connection.objcImplementations objectForKey:connection[@"uid"]];
    [currentInstanceObj connect:url connection:objcParam_1];

}

/**
 * Send a message to a given client.
 * @connection, the Web Socket connection to use
 * @data, the message to send
 */
RCT_REMAP_METHOD(send,send:(NSDictionary *)currentInstance withParams:(NSDictionary *)connection
                                                                 data:(nonnull NSString *)data withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWebSocketClient::send, first argument should be an instance of LGWebSocketClientImpl", nil);
        return;
    }
    LGWebSocketClientImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWebSocketClientImpl::send, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGWebSocketConnection *rctParam_connection = (RCTCoreLGWebSocketConnection *)[self.bridge moduleForName:@"CoreLGWebSocketConnection"];
    LGWebSocketConnection *objcParam_0 = (LGWebSocketConnection *)[rctParam_connection.objcImplementations objectForKey:connection[@"uid"]];
    [currentInstanceObj send:objcParam_0 data:data];

}

/**
 * Disconnect a client.
 * @connection, the Web Socket connection to use
 */
RCT_REMAP_METHOD(disconnect,disconnect:(NSDictionary *)currentInstance withParams:(NSDictionary *)connection withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWebSocketClient::disconnect, first argument should be an instance of LGWebSocketClientImpl", nil);
        return;
    }
    LGWebSocketClientImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWebSocketClientImpl::disconnect, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGWebSocketConnection *rctParam_connection = (RCTCoreLGWebSocketConnection *)[self.bridge moduleForName:@"CoreLGWebSocketConnection"];
    LGWebSocketConnection *objcParam_0 = (LGWebSocketConnection *)[rctParam_connection.objcImplementations objectForKey:connection[@"uid"]];
    [currentInstanceObj disconnect:objcParam_0];

}
RCT_REMAP_METHOD(newInstance, newInstanceWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    LGWebSocketClientImpl *objcResult = [[LGWebSocketClientImpl alloc] init];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    NSArray *resultArray = [[NSArray alloc] initWithObjects:objcResult, uuid, nil];
    [self baseSetObject:resultArray];
    NSDictionary *result = @{@"type" : @"CoreLGWebSocketClientImpl", @"uid" : uuid };
    if (!objcResult || !result)
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWebSocketClientImpl::init", nil);
        return;
    }
    resolve(result);
}
@end
