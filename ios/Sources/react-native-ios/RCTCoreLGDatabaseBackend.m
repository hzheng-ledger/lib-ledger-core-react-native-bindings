// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from database.djinni

#import "RCTCoreLGDatabaseBackend.h"


@implementation RCTCoreLGDatabaseBackend
//Export module
RCT_EXPORT_MODULE(RCTCoreLGDatabaseBackend)

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
 * Get the maximum number of concurrent connection that the backend is able to open on a single database.
 * @return the size of the connection pool.
 */
RCT_REMAP_METHOD(getConnectionPoolSize,getConnectionPoolSize:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDatabaseBackend::getConnectionPoolSize, first argument should be an instance of LGDatabaseBackend", nil);
        return;
    }
    LGDatabaseBackend *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDatabaseBackend::getConnectionPoolSize, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSInteger objcResult = [currentInstanceObj getConnectionPoolSize];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDatabaseBackend::getConnectionPoolSize", nil);
        return;
    }

}

/**
 * Enable or disable query logging. By default logging is disabled. Query logging will record every SQL query in log streams.
 * @return this database backend (to chain configuration calls)
 */
RCT_REMAP_METHOD(enableQueryLogging,enableQueryLogging:(NSDictionary *)currentInstance withParams:(BOOL)enable withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDatabaseBackend::enableQueryLogging, first argument should be an instance of LGDatabaseBackend", nil);
        return;
    }
    LGDatabaseBackend *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDatabaseBackend::enableQueryLogging, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGDatabaseBackend * objcResult = [currentInstanceObj enableQueryLogging:enable];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDatabaseBackend *rctImpl_objcResult = (RCTCoreLGDatabaseBackend *)[self.bridge moduleForName:@"CoreLGDatabaseBackend"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGDatabaseBackend", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDatabaseBackend::enableQueryLogging", nil);
        return;
    }

}

/**
 * Return true if query logging is enabled.
 * @return trye if query logging is enabled, false otherwise.
 */
RCT_REMAP_METHOD(isLoggingEnabled,isLoggingEnabled:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDatabaseBackend::isLoggingEnabled, first argument should be an instance of LGDatabaseBackend", nil);
        return;
    }
    LGDatabaseBackend *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDatabaseBackend::isLoggingEnabled, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    BOOL objcResult = [currentInstanceObj isLoggingEnabled];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDatabaseBackend::isLoggingEnabled", nil);
        return;
    }

}

/**
 * Create an instance of SQLite3 database.
 * @return DatabaseBackend object
 */
RCT_REMAP_METHOD(getSqlite3Backend,getSqlite3BackendWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    LGDatabaseBackend * objcResult = [LGDatabaseBackend getSqlite3Backend];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDatabaseBackend *rctImpl_objcResult = (RCTCoreLGDatabaseBackend *)[self.bridge moduleForName:@"CoreLGDatabaseBackend"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGDatabaseBackend", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDatabaseBackend::getSqlite3Backend", nil);
        return;
    }

}

/**
 * Create an instance of PostgreSQL database.
 * @return DatabaseBackend object
 */
RCT_REMAP_METHOD(getPostgreSQLBackend,getPostgreSQLBackendwithParams:(int)connectionPoolSize withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    LGDatabaseBackend * objcResult = [LGDatabaseBackend getPostgreSQLBackend:connectionPoolSize];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDatabaseBackend *rctImpl_objcResult = (RCTCoreLGDatabaseBackend *)[self.bridge moduleForName:@"CoreLGDatabaseBackend"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGDatabaseBackend", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDatabaseBackend::getPostgreSQLBackend", nil);
        return;
    }

}

/** Create a database backend instance from the given DatabaseEngine implementation. */
RCT_REMAP_METHOD(createBackendFromEngine,createBackendFromEnginewithParams:(NSDictionary *)engine withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    RCTCoreLGDatabaseEngine *rctParam_engine = (RCTCoreLGDatabaseEngine *)[self.bridge moduleForName:@"CoreLGDatabaseEngine"];
    id<LGDatabaseEngine>objcParam_0 = (id<LGDatabaseEngine>)[rctParam_engine.objcImplementations objectForKey:engine[@"uid"]];
    LGDatabaseBackend * objcResult = [LGDatabaseBackend createBackendFromEngine:objcParam_0];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDatabaseBackend *rctImpl_objcResult = (RCTCoreLGDatabaseBackend *)[self.bridge moduleForName:@"CoreLGDatabaseBackend"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGDatabaseBackend", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDatabaseBackend::createBackendFromEngine", nil);
        return;
    }

}
@end
