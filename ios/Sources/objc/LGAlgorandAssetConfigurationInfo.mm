// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from idl.djinni

#import "LGAlgorandAssetConfigurationInfo.h"


@implementation LGAlgorandAssetConfigurationInfo

- (nonnull instancetype)initWithAssetId:(nullable NSString *)assetId
                            assetParams:(nullable LGAlgorandAssetParams *)assetParams
{
    if (self = [super init]) {
        _assetId = [assetId copy];
        _assetParams = assetParams;
    }
    return self;
}

+ (nonnull instancetype)AlgorandAssetConfigurationInfoWithAssetId:(nullable NSString *)assetId
                                                      assetParams:(nullable LGAlgorandAssetParams *)assetParams
{
    return [[self alloc] initWithAssetId:assetId
                             assetParams:assetParams];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@ %p assetId:%@ assetParams:%@>", self.class, (void *)self, self.assetId, self.assetParams];
}

@end