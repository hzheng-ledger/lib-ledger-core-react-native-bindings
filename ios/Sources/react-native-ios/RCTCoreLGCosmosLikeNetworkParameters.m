// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from addresses.djinni

#import "RCTCoreLGCosmosLikeNetworkParameters.h"
#import "LGCosmosLikeNetworkParameters.h"

@implementation RCTCoreLGCosmosLikeNetworkParameters

//Export module
RCT_EXPORT_MODULE(RCTCoreLGCosmosLikeNetworkParameters)

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
RCT_REMAP_METHOD(init, initWithIdentifier:(nonnull NSString *)Identifier
                            MessagePrefix:(nonnull NSString *)MessagePrefix
                              XPUBVersion:(NSString *)XPUBVersion
                             PubKeyPrefix:(NSString *)PubKeyPrefix
                      Ed25519PubKeyPrefix:(NSString *)Ed25519PubKeyPrefix
                            AddressPrefix:(NSString *)AddressPrefix
                                  ChainId:(nonnull NSString *)ChainId
                           AdditionalCIPs:(nonnull NSArray<NSString *> *)AdditionalCIPs withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    NSData *field_2 = [self hexStringToData:XPUBVersion];

    NSData *field_3 = [self hexStringToData:PubKeyPrefix];

    NSData *field_4 = [self hexStringToData:Ed25519PubKeyPrefix];

    NSData *field_5 = [self hexStringToData:AddressPrefix];



    LGCosmosLikeNetworkParameters * finalResult = [[LGCosmosLikeNetworkParameters alloc] initWithIdentifier:Identifier MessagePrefix:MessagePrefix XPUBVersion:field_2 PubKeyPrefix:field_3 Ed25519PubKeyPrefix:field_4 AddressPrefix:field_5 ChainId:ChainId AdditionalCIPs:AdditionalCIPs];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGCosmosLikeNetworkParameters *rctImpl = (RCTCoreLGCosmosLikeNetworkParameters *)[self.bridge moduleForName:@"CoreLGCosmosLikeNetworkParameters"];
    NSArray *finalResultArray = [[NSArray alloc] initWithObjects:finalResult, uuid, nil];
    [rctImpl baseSetObject:finalResultArray];
    NSDictionary *result = @{@"type" : @"CoreLGCosmosLikeNetworkParameters", @"uid" : uuid };
    if (result)
    {
        resolve(result);
    }
}

RCT_REMAP_METHOD(getIdentifier, getIdentifier:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeNetworkParameters *objcImpl = (LGCosmosLikeNetworkParameters *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.Identifier};
    resolve(result);
}

RCT_REMAP_METHOD(getMessagePrefix, getMessagePrefix:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeNetworkParameters *objcImpl = (LGCosmosLikeNetworkParameters *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.MessagePrefix};
    resolve(result);
}

RCT_REMAP_METHOD(getXPUBVersion, getXPUBVersion:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeNetworkParameters *objcImpl = (LGCosmosLikeNetworkParameters *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSString *objcImplXPUBVersionHexString = [self dataToHexString:objcImpl.XPUBVersion];
    NSDictionary *result = @{@"value" : objcImplXPUBVersionHexString};
    resolve(result);
}

RCT_REMAP_METHOD(getPubKeyPrefix, getPubKeyPrefix:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeNetworkParameters *objcImpl = (LGCosmosLikeNetworkParameters *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSString *objcImplPubKeyPrefixHexString = [self dataToHexString:objcImpl.PubKeyPrefix];
    NSDictionary *result = @{@"value" : objcImplPubKeyPrefixHexString};
    resolve(result);
}

RCT_REMAP_METHOD(getEd25519PubKeyPrefix, getEd25519PubKeyPrefix:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeNetworkParameters *objcImpl = (LGCosmosLikeNetworkParameters *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSString *objcImplEd25519PubKeyPrefixHexString = [self dataToHexString:objcImpl.Ed25519PubKeyPrefix];
    NSDictionary *result = @{@"value" : objcImplEd25519PubKeyPrefixHexString};
    resolve(result);
}

RCT_REMAP_METHOD(getAddressPrefix, getAddressPrefix:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeNetworkParameters *objcImpl = (LGCosmosLikeNetworkParameters *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSString *objcImplAddressPrefixHexString = [self dataToHexString:objcImpl.AddressPrefix];
    NSDictionary *result = @{@"value" : objcImplAddressPrefixHexString};
    resolve(result);
}

RCT_REMAP_METHOD(getChainId, getChainId:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeNetworkParameters *objcImpl = (LGCosmosLikeNetworkParameters *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.ChainId};
    resolve(result);
}

RCT_REMAP_METHOD(getAdditionalCIPs, getAdditionalCIPs:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeNetworkParameters *objcImpl = (LGCosmosLikeNetworkParameters *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.AdditionalCIPs};
    resolve(result);
}

@end
