// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from database.djinni

#import "RCTCoreLGDatabaseConnection.h"


@implementation RCTCoreLGDatabaseConnection
//Export module
RCT_EXPORT_MODULE(RCTCoreLGDatabaseConnection)

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
 * Prepare a statement object using the given SQL query. The statement object will then be responsible of executing
 * the query and handle results. Statement objects may be reused over time if their `repeatable` flag is set to true.
 * @param query A SQL query to execute (e.g. "SELECT * FROM users WHERE name = 'Joe'")
 * @param repeatable A flag to indicate whether or not the statement is repeatable
 */
RCT_REMAP_METHOD(prepareStatement,prepareStatement:(NSDictionary *)currentInstance withParams:(nonnull NSString *)query
                                                                                   repeatable:(BOOL)repeatable withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDatabaseConnection::prepareStatement, first argument should be an instance of LGDatabaseConnectionImpl", nil);
        return;
    }
    LGDatabaseConnectionImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDatabaseConnectionImpl::prepareStatement, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    id<LGDatabaseStatement> objcResult = [currentInstanceObj prepareStatement:query repeatable:repeatable];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDatabaseStatement *rctImpl_objcResult = (RCTCoreLGDatabaseStatement *)[self.bridge moduleForName:@"CoreLGDatabaseStatement"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGDatabaseStatement", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDatabaseConnectionImpl::prepareStatement", nil);
        return;
    }

}

/** Begin a SQL transaction on this connection. */
RCT_REMAP_METHOD(begin,begin:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDatabaseConnection::begin, first argument should be an instance of LGDatabaseConnectionImpl", nil);
        return;
    }
    LGDatabaseConnectionImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDatabaseConnectionImpl::begin, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    [currentInstanceObj begin];

}

/** End the current transaction and rollback all changes that occurred between the call of `begin` and `rollback`. */
RCT_REMAP_METHOD(rollback,rollback:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDatabaseConnection::rollback, first argument should be an instance of LGDatabaseConnectionImpl", nil);
        return;
    }
    LGDatabaseConnectionImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDatabaseConnectionImpl::rollback, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    [currentInstanceObj rollback];

}

/** End the current transaction and persist all changes that occurred between the call of `begin` and `commit`. */
RCT_REMAP_METHOD(commit,commit:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDatabaseConnection::commit, first argument should be an instance of LGDatabaseConnectionImpl", nil);
        return;
    }
    LGDatabaseConnectionImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDatabaseConnectionImpl::commit, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    [currentInstanceObj commit];

}

/** Close the current connection. After this call the connection should never be called again. */
RCT_REMAP_METHOD(close,close:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDatabaseConnection::close, first argument should be an instance of LGDatabaseConnectionImpl", nil);
        return;
    }
    LGDatabaseConnectionImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDatabaseConnectionImpl::close, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    [currentInstanceObj close];

}

/**
 * Create a new empty blob.
 * @return An empty blob
 */
RCT_REMAP_METHOD(newBlob,newBlob:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDatabaseConnection::newBlob, first argument should be an instance of LGDatabaseConnectionImpl", nil);
        return;
    }
    LGDatabaseConnectionImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDatabaseConnectionImpl::newBlob, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    id<LGDatabaseBlob> objcResult = [currentInstanceObj newBlob];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDatabaseBlob *rctImpl_objcResult = (RCTCoreLGDatabaseBlob *)[self.bridge moduleForName:@"CoreLGDatabaseBlob"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGDatabaseBlob", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDatabaseConnectionImpl::newBlob", nil);
        return;
    }

}
RCT_REMAP_METHOD(newInstance, newInstanceWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    LGDatabaseConnectionImpl *objcResult = [[LGDatabaseConnectionImpl alloc] init];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    NSArray *resultArray = [[NSArray alloc] initWithObjects:objcResult, uuid, nil];
    [self baseSetObject:resultArray];
    NSDictionary *result = @{@"type" : @"CoreLGDatabaseConnectionImpl", @"uid" : uuid };
    if (!objcResult || !result)
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDatabaseConnectionImpl::init", nil);
        return;
    }
    resolve(result);
}
@end
