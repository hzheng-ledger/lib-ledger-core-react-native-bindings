// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from websocket_client.djinni

#import "RCTCoreLGWebSocketConnection.h"


@implementation RCTCoreLGWebSocketConnection
//Export module
RCT_EXPORT_MODULE(RCTCoreLGWebSocketConnection)

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
 * Callback to call upon successful connection.
 * @param connectionId, the ID of the Web Socket connection
 */
RCT_REMAP_METHOD(onConnect,onConnect:(NSDictionary *)currentInstance withParams:(int)connectionId withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWebSocketConnection::onConnect, first argument should be an instance of LGWebSocketConnection", nil);
        return;
    }
    LGWebSocketConnection *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWebSocketConnection::onConnect, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    [currentInstanceObj onConnect:connectionId];

}

/** Callback to call upon successful disconnection. */
RCT_REMAP_METHOD(onClose,onClose:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWebSocketConnection::onClose, first argument should be an instance of LGWebSocketConnection", nil);
        return;
    }
    LGWebSocketConnection *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWebSocketConnection::onClose, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    [currentInstanceObj onClose];

}

/**
 * Callback to call upon each incoming message.
 * @param data, the attached data to the input message
 */
RCT_REMAP_METHOD(onMessage,onMessage:(NSDictionary *)currentInstance withParams:(nonnull NSString *)data withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWebSocketConnection::onMessage, first argument should be an instance of LGWebSocketConnection", nil);
        return;
    }
    LGWebSocketConnection *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWebSocketConnection::onMessage, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    [currentInstanceObj onMessage:data];

}

/**
 * Callback to call when a Web Socket error occurs.
 * @param code, the error code
 * @param message, a description of the reason of the error
 */
RCT_REMAP_METHOD(onError,onError:(NSDictionary *)currentInstance withParams:(int)code
                                                                    message:(nonnull NSString *)message withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWebSocketConnection::onError, first argument should be an instance of LGWebSocketConnection", nil);
        return;
    }
    LGWebSocketConnection *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWebSocketConnection::onError, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    [currentInstanceObj onError:(LGErrorCode)code message:message];

}

RCT_REMAP_METHOD(getConnectionId,getConnectionId:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWebSocketConnection::getConnectionId, first argument should be an instance of LGWebSocketConnection", nil);
        return;
    }
    LGWebSocketConnection *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWebSocketConnection::getConnectionId, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSInteger objcResult = [currentInstanceObj getConnectionId];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGWebSocketConnection::getConnectionId", nil);
        return;
    }

}
@end
