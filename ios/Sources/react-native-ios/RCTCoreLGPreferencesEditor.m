// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from preferences.djinni

#import "RCTCoreLGPreferencesEditor.h"


@implementation RCTCoreLGPreferencesEditor
//Export module
RCT_EXPORT_MODULE(RCTCoreLGPreferencesEditor)

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
-(NSData *) hexStringToData: (NSString *)hexString 
{
    NSMutableData *data= [[NSMutableData alloc] init];
    unsigned char byte;
    char byteChars[3] = {'\0','\0','\0'};
    for (int i = 0; i < ([hexString length] / 2); i++)
    {
        byteChars[0] = [hexString characterAtIndex: i*2];
        byteChars[1] = [hexString characterAtIndex: i*2 + 1];
        byte = strtol(byteChars, NULL, 16);
        [data appendBytes:&byte length:1];
    }
    return data;
}
-(NSString *) dataToHexString: (NSData *)data 
{
    const unsigned char *bytes = (const unsigned char *)data.bytes;
    NSMutableString *hex = [NSMutableString new];
    for (NSInteger i = 0; i < data.length; i++)
    {
        [hex appendFormat:@"%02x", bytes[i]];
    }
    return [hex copy];
}

/**
 * Sets the value to the given key in the Preferences.
 * @param key The data key.
 * @param value The value to store
 * @return The reference of self in order to chain the call to the editor.
 */
RCT_REMAP_METHOD(putString,putString:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key
                                                                          value:(nonnull NSString *)value withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGPreferencesEditor::putString, first argument should be an instance of LGPreferencesEditor", nil);
        return;
    }
    LGPreferencesEditor *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGPreferencesEditor::putString, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGPreferencesEditor * objcResult = [currentInstanceObj putString:key value:value];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGPreferencesEditor *rctImpl_objcResult = (RCTCoreLGPreferencesEditor *)[self.bridge moduleForName:@"CoreLGPreferencesEditor"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGPreferencesEditor", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGPreferencesEditor::putString", nil);
        return;
    }

}

/**
 * Sets the value to the given key in the Preferences.
 * @param key The data key.
 * @param value The value to store
 * @return The reference of self in order to chain the call to the editor.
 */
RCT_REMAP_METHOD(putInt,putInt:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key
                                                                    value:(int)value withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGPreferencesEditor::putInt, first argument should be an instance of LGPreferencesEditor", nil);
        return;
    }
    LGPreferencesEditor *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGPreferencesEditor::putInt, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGPreferencesEditor * objcResult = [currentInstanceObj putInt:key value:value];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGPreferencesEditor *rctImpl_objcResult = (RCTCoreLGPreferencesEditor *)[self.bridge moduleForName:@"CoreLGPreferencesEditor"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGPreferencesEditor", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGPreferencesEditor::putInt", nil);
        return;
    }

}

/**
 * Sets the value to the given key in the Preferences.
 * @param key The data key.
 * @param value The value to store
 * @return The reference of self in order to chain the call to the editor.
 */
RCT_REMAP_METHOD(putLong,putLong:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key
                                                                      value:(int)value withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGPreferencesEditor::putLong, first argument should be an instance of LGPreferencesEditor", nil);
        return;
    }
    LGPreferencesEditor *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGPreferencesEditor::putLong, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGPreferencesEditor * objcResult = [currentInstanceObj putLong:key value:value];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGPreferencesEditor *rctImpl_objcResult = (RCTCoreLGPreferencesEditor *)[self.bridge moduleForName:@"CoreLGPreferencesEditor"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGPreferencesEditor", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGPreferencesEditor::putLong", nil);
        return;
    }

}

/**
 * Sets the value to the given key in the Preferences.
 * @param key The data key.
 * @param value The value to store
 * @return The reference of self in order to chain the call to the editor.
 */
RCT_REMAP_METHOD(putBoolean,putBoolean:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key
                                                                            value:(BOOL)value withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGPreferencesEditor::putBoolean, first argument should be an instance of LGPreferencesEditor", nil);
        return;
    }
    LGPreferencesEditor *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGPreferencesEditor::putBoolean, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGPreferencesEditor * objcResult = [currentInstanceObj putBoolean:key value:value];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGPreferencesEditor *rctImpl_objcResult = (RCTCoreLGPreferencesEditor *)[self.bridge moduleForName:@"CoreLGPreferencesEditor"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGPreferencesEditor", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGPreferencesEditor::putBoolean", nil);
        return;
    }

}

/**
 * Sets the value to the given key in the Preferences.
 * @param key The data key.
 * @param value The value to store
 * @return The reference of self in order to chain the call to the editor.
 */
RCT_REMAP_METHOD(putStringArray,putStringArray:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key
                                                                                    value:(nonnull NSArray<NSString *> *)value withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGPreferencesEditor::putStringArray, first argument should be an instance of LGPreferencesEditor", nil);
        return;
    }
    LGPreferencesEditor *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGPreferencesEditor::putStringArray, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGPreferencesEditor * objcResult = [currentInstanceObj putStringArray:key value:value];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGPreferencesEditor *rctImpl_objcResult = (RCTCoreLGPreferencesEditor *)[self.bridge moduleForName:@"CoreLGPreferencesEditor"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGPreferencesEditor", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGPreferencesEditor::putStringArray", nil);
        return;
    }

}

/**
 * Sets the value to the given key in the Preferences.
 * @param key The data key.
 * @param value The value to store
 * @return The reference of self in order to chain the call to the editor.
 */
RCT_REMAP_METHOD(putData,putData:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key
                                                                      value:(NSString *)value withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGPreferencesEditor::putData, first argument should be an instance of LGPreferencesEditor", nil);
        return;
    }
    LGPreferencesEditor *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGPreferencesEditor::putData, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData *objcParam_1 = [self hexStringToData:value];

    LGPreferencesEditor * objcResult = [currentInstanceObj putData:key value:objcParam_1];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGPreferencesEditor *rctImpl_objcResult = (RCTCoreLGPreferencesEditor *)[self.bridge moduleForName:@"CoreLGPreferencesEditor"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGPreferencesEditor", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGPreferencesEditor::putData", nil);
        return;
    }

}

/**
 * Removes the data associated with the given key.
 * @param key The key to remove from the Preferences
 * @return The reference of self in order to chain the call to the editor.
 */
RCT_REMAP_METHOD(remove,remove:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGPreferencesEditor::remove, first argument should be an instance of LGPreferencesEditor", nil);
        return;
    }
    LGPreferencesEditor *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGPreferencesEditor::remove, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGPreferencesEditor * objcResult = [currentInstanceObj remove:key];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGPreferencesEditor *rctImpl_objcResult = (RCTCoreLGPreferencesEditor *)[self.bridge moduleForName:@"CoreLGPreferencesEditor"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGPreferencesEditor", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGPreferencesEditor::remove", nil);
        return;
    }

}

/** Persists the changes to the Preferences. */
RCT_REMAP_METHOD(commit,commit:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGPreferencesEditor::commit, first argument should be an instance of LGPreferencesEditor", nil);
        return;
    }
    LGPreferencesEditor *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGPreferencesEditor::commit, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    [currentInstanceObj commit];
    resolve(@(YES));

}

/** Clear all preferences. */
RCT_REMAP_METHOD(clear,clear:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGPreferencesEditor::clear, first argument should be an instance of LGPreferencesEditor", nil);
        return;
    }
    LGPreferencesEditor *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGPreferencesEditor::clear, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    [currentInstanceObj clear];
    resolve(@(YES));

}
@end
