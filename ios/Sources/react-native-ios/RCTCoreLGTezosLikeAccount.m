// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from tezos_like_wallet.djinni

#import "RCTCoreLGTezosLikeAccount.h"


@implementation RCTCoreLGTezosLikeAccount
//Export module
RCT_EXPORT_MODULE(RCTCoreLGTezosLikeAccount)

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

RCT_REMAP_METHOD(broadcastRawTransaction,broadcastRawTransaction:(NSDictionary *)currentInstance withParams:(NSString *)transaction withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeAccount::broadcastRawTransaction, first argument should be an instance of LGTezosLikeAccount", nil);
        return;
    }
    LGTezosLikeAccount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeAccount::broadcastRawTransaction, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData *objcParam_0 = [self hexStringToData:transaction];

    RCTCoreLGStringCallback *objcParam_1 = [[RCTCoreLGStringCallback alloc] initWithResolver:resolve rejecter:reject andBridge:self.bridge];
    [currentInstanceObj broadcastRawTransaction:objcParam_0 callback:objcParam_1];

}

RCT_REMAP_METHOD(broadcastTransaction,broadcastTransaction:(NSDictionary *)currentInstance withParams:(NSDictionary *)transaction withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeAccount::broadcastTransaction, first argument should be an instance of LGTezosLikeAccount", nil);
        return;
    }
    LGTezosLikeAccount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeAccount::broadcastTransaction, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGTezosLikeTransaction *rctParam_transaction = (RCTCoreLGTezosLikeTransaction *)[self.bridge moduleForName:@"CoreLGTezosLikeTransaction"];
    LGTezosLikeTransaction *objcParam_0 = (LGTezosLikeTransaction *)[rctParam_transaction.objcImplementations objectForKey:transaction[@"uid"]];
    RCTCoreLGStringCallback *objcParam_1 = [[RCTCoreLGStringCallback alloc] initWithResolver:resolve rejecter:reject andBridge:self.bridge];
    [currentInstanceObj broadcastTransaction:objcParam_0 callback:objcParam_1];

}

RCT_REMAP_METHOD(buildTransaction,buildTransaction:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeAccount::buildTransaction, first argument should be an instance of LGTezosLikeAccount", nil);
        return;
    }
    LGTezosLikeAccount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeAccount::buildTransaction, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGTezosLikeTransactionBuilder * objcResult = [currentInstanceObj buildTransaction];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGTezosLikeTransactionBuilder *rctImpl_objcResult = (RCTCoreLGTezosLikeTransactionBuilder *)[self.bridge moduleForName:@"CoreLGTezosLikeTransactionBuilder"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGTezosLikeTransactionBuilder", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGTezosLikeAccount::buildTransaction", nil);
        return;
    }

}

/**
 * Get needed storage to proceed a tx
 * @param address to which we want to send tx
 * @return needed storage to interact with address/contract
 * Note: same note as for getGasPrice method on EthereumLikeAccount
 */
RCT_REMAP_METHOD(getStorage,getStorage:(NSDictionary *)currentInstance withParams:(nonnull NSString *)address withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeAccount::getStorage, first argument should be an instance of LGTezosLikeAccount", nil);
        return;
    }
    LGTezosLikeAccount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeAccount::getStorage, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGBigIntCallback *objcParam_1 = [[RCTCoreLGBigIntCallback alloc] initWithResolver:resolve rejecter:reject andBridge:self.bridge];
    [currentInstanceObj getStorage:address callback:objcParam_1];

}

/**
 * Get estimated gas limit to set so the transaction will succeed
 * The passed address could be implicit address or contract
 * This estimation is based on X last incoming txs (to address) that succeeded
 * Note: same note as for getFees method on BitcoinLikeAccount
 */
RCT_REMAP_METHOD(getEstimatedGasLimit,getEstimatedGasLimit:(NSDictionary *)currentInstance withParams:(nonnull NSString *)address withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeAccount::getEstimatedGasLimit, first argument should be an instance of LGTezosLikeAccount", nil);
        return;
    }
    LGTezosLikeAccount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeAccount::getEstimatedGasLimit, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGBigIntCallback *objcParam_1 = [[RCTCoreLGBigIntCallback alloc] initWithResolver:resolve rejecter:reject andBridge:self.bridge];
    [currentInstanceObj getEstimatedGasLimit:address callback:objcParam_1];

}

/** Get fees from network */
RCT_REMAP_METHOD(getFees,getFees:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeAccount::getFees, first argument should be an instance of LGTezosLikeAccount", nil);
        return;
    }
    LGTezosLikeAccount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeAccount::getFees, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGBigIntCallback *objcParam_0 = [[RCTCoreLGBigIntCallback alloc] initWithResolver:resolve rejecter:reject andBridge:self.bridge];
    [currentInstanceObj getFees:objcParam_0];

}

/** Get originated accounts by current account */
RCT_REMAP_METHOD(getOriginatedAccounts,getOriginatedAccounts:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeAccount::getOriginatedAccounts, first argument should be an instance of LGTezosLikeAccount", nil);
        return;
    }
    LGTezosLikeAccount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeAccount::getOriginatedAccounts, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSArray<LGTezosLikeOriginatedAccount *> * objcResult = [currentInstanceObj getOriginatedAccounts];

    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (id objcResult_elem in objcResult)
    {
        NSString *objcResult_elem_uuid = [[NSUUID UUID] UUIDString];
        RCTCoreLGTezosLikeOriginatedAccount *rctImpl_objcResult_elem = (RCTCoreLGTezosLikeOriginatedAccount *)[self.bridge moduleForName:@"CoreLGTezosLikeOriginatedAccount"];
        NSArray *objcResult_elem_array = [[NSArray alloc] initWithObjects:objcResult_elem, objcResult_elem_uuid, nil];
        [rctImpl_objcResult_elem baseSetObject:objcResult_elem_array];
        NSDictionary *result_elem = @{@"type" : @"CoreLGTezosLikeOriginatedAccount", @"uid" : objcResult_elem_uuid };
        [result addObject:result_elem];
    }

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGTezosLikeAccount::getOriginatedAccounts", nil);
        return;
    }

}
@end