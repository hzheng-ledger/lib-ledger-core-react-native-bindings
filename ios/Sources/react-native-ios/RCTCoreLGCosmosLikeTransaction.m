// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

#import "RCTCoreLGCosmosLikeTransaction.h"


@implementation RCTCoreLGCosmosLikeTransaction
//Export module
RCT_EXPORT_MODULE(RCTCoreLGCosmosLikeTransaction)

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

/** Get the time when the transaction was issued or the time of the block including this transaction */
RCT_REMAP_METHOD(getDate,getDate:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeTransaction::getDate, first argument should be an instance of LGCosmosLikeTransaction", nil);
        return;
    }
    LGCosmosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeTransaction::getDate, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSDate * objcResult = [currentInstanceObj getDate];
    NSISO8601DateFormatter *dateFormatter = [[NSISO8601DateFormatter alloc] init];
    NSString *objcResultDate = [dateFormatter stringFromDate:objcResult];
    NSDictionary *result = @{@"value" : objcResultDate};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeTransaction::getDate", nil);
        return;
    }

}

/** Get Fee (in drop) */
RCT_REMAP_METHOD(getFee,getFee:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeTransaction::getFee, first argument should be an instance of LGCosmosLikeTransaction", nil);
        return;
    }
    LGCosmosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeTransaction::getFee, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGAmount * objcResult = [currentInstanceObj getFee];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGAmount *rctImpl_objcResult = (RCTCoreLGAmount *)[self.bridge moduleForName:@"CoreLGAmount"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGAmount", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeTransaction::getFee", nil);
        return;
    }

}

/** Get gas Wanted (maximum gas advertised in transaction) */
RCT_REMAP_METHOD(getGas,getGas:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeTransaction::getGas, first argument should be an instance of LGCosmosLikeTransaction", nil);
        return;
    }
    LGCosmosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeTransaction::getGas, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGAmount * objcResult = [currentInstanceObj getGas];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGAmount *rctImpl_objcResult = (RCTCoreLGAmount *)[self.bridge moduleForName:@"CoreLGAmount"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGAmount", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeTransaction::getGas", nil);
        return;
    }

}

/** Get gas used (gas actually used in the transaction) */
RCT_REMAP_METHOD(getGasUsed,getGasUsed:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeTransaction::getGasUsed, first argument should be an instance of LGCosmosLikeTransaction", nil);
        return;
    }
    LGCosmosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeTransaction::getGasUsed, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGBigInt * objcResult = [currentInstanceObj getGasUsed];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGBigInt *rctImpl_objcResult = (RCTCoreLGBigInt *)[self.bridge moduleForName:@"CoreLGBigInt"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGBigInt", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeTransaction::getGasUsed", nil);
        return;
    }

}

/** Get gas Wanted (in BigInt form) */
RCT_REMAP_METHOD(getGasWanted,getGasWanted:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeTransaction::getGasWanted, first argument should be an instance of LGCosmosLikeTransaction", nil);
        return;
    }
    LGCosmosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeTransaction::getGasWanted, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGBigInt * objcResult = [currentInstanceObj getGasWanted];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGBigInt *rctImpl_objcResult = (RCTCoreLGBigInt *)[self.bridge moduleForName:@"CoreLGBigInt"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGBigInt", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeTransaction::getGasWanted", nil);
        return;
    }

}

/** Get the hash of the transaction. */
RCT_REMAP_METHOD(getHash,getHash:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeTransaction::getHash, first argument should be an instance of LGCosmosLikeTransaction", nil);
        return;
    }
    LGCosmosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeTransaction::getHash, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj getHash];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeTransaction::getHash", nil);
        return;
    }

}

/** Get memo */
RCT_REMAP_METHOD(getMemo,getMemo:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeTransaction::getMemo, first argument should be an instance of LGCosmosLikeTransaction", nil);
        return;
    }
    LGCosmosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeTransaction::getMemo, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj getMemo];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeTransaction::getMemo", nil);
        return;
    }

}

/** Get the list of messages */
RCT_REMAP_METHOD(getMessages,getMessages:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeTransaction::getMessages, first argument should be an instance of LGCosmosLikeTransaction", nil);
        return;
    }
    LGCosmosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeTransaction::getMessages, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSArray<LGCosmosLikeMessage *> * objcResult = [currentInstanceObj getMessages];

    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (id objcResult_elem in objcResult)
    {
        NSString *objcResult_elem_uuid = [[NSUUID UUID] UUIDString];
        RCTCoreLGCosmosLikeMessage *rctImpl_objcResult_elem = (RCTCoreLGCosmosLikeMessage *)[self.bridge moduleForName:@"CoreLGCosmosLikeMessage"];
        NSArray *objcResult_elem_array = [[NSArray alloc] initWithObjects:objcResult_elem, objcResult_elem_uuid, nil];
        [rctImpl_objcResult_elem baseSetObject:objcResult_elem_array];
        NSDictionary *result_elem = @{@"type" : @"CoreLGCosmosLikeMessage", @"uid" : objcResult_elem_uuid };
        [result addObject:result_elem];
    }

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeTransaction::getMessages", nil);
        return;
    }

}

/** Get Signing public Key */
RCT_REMAP_METHOD(getSigningPubKey,getSigningPubKey:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeTransaction::getSigningPubKey, first argument should be an instance of LGCosmosLikeTransaction", nil);
        return;
    }
    LGCosmosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeTransaction::getSigningPubKey, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData * objcResult = [currentInstanceObj getSigningPubKey];
    NSString *objcResultData = [self dataToHexString:objcResult];
    NSDictionary *result = @{@"value" : objcResultData};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeTransaction::getSigningPubKey", nil);
        return;
    }

}

/** Serialize the transaction to be signed */
RCT_REMAP_METHOD(serializeForSignature,serializeForSignature:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeTransaction::serializeForSignature, first argument should be an instance of LGCosmosLikeTransaction", nil);
        return;
    }
    LGCosmosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeTransaction::serializeForSignature, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj serializeForSignature];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeTransaction::serializeForSignature", nil);
        return;
    }

}

/** Set signature of transaction, when a signature is set it can be broadcasted */
RCT_REMAP_METHOD(setSignature,setSignature:(NSDictionary *)currentInstance withParams:(NSString *)rSignature
                                                                           sSignature:(NSString *)sSignature withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeTransaction::setSignature, first argument should be an instance of LGCosmosLikeTransaction", nil);
        return;
    }
    LGCosmosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeTransaction::setSignature, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData *objcParam_0 = [self hexStringToData:rSignature];

    NSData *objcParam_1 = [self hexStringToData:sSignature];

    [currentInstanceObj setSignature:objcParam_0 sSignature:objcParam_1];
    resolve(@(YES));

}

RCT_REMAP_METHOD(setDERSignature,setDERSignature:(NSDictionary *)currentInstance withParams:(NSString *)signature withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeTransaction::setDERSignature, first argument should be an instance of LGCosmosLikeTransaction", nil);
        return;
    }
    LGCosmosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeTransaction::setDERSignature, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData *objcParam_0 = [self hexStringToData:signature];

    [currentInstanceObj setDERSignature:objcParam_0];
    resolve(@(YES));

}

/**
 * Serialize the transaction to be broadcast
 * @param mode The supported broadcast modes include
 *        "block"(return after tx commit), (https://docs.cosmos.network/master/basics/tx-lifecycle.html#commit)
 *        "sync"(return afer CheckTx), (https://docs.cosmos.network/master/basics/tx-lifecycle.html#types-of-checks) and
 *        "async"(return right away).
 * @return string the json payload to broadcast on the network
 */
RCT_REMAP_METHOD(serializeForBroadcast,serializeForBroadcast:(NSDictionary *)currentInstance withParams:(nonnull NSString *)mode withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeTransaction::serializeForBroadcast, first argument should be an instance of LGCosmosLikeTransaction", nil);
        return;
    }
    LGCosmosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeTransaction::serializeForBroadcast, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj serializeForBroadcast:mode];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeTransaction::serializeForBroadcast", nil);
        return;
    }

}
@end
