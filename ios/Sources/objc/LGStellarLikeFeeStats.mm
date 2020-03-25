// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from stellar_like_wallet.djinni

#import "LGStellarLikeFeeStats.h"


@implementation LGStellarLikeFeeStats

- (nonnull instancetype)initWithLastBaseFee:(int64_t)lastBaseFee
                            modeAcceptedFee:(int64_t)modeAcceptedFee
                                minAccepted:(int64_t)minAccepted
                                     maxFee:(int64_t)maxFee
{
    if (self = [super init]) {
        _lastBaseFee = lastBaseFee;
        _modeAcceptedFee = modeAcceptedFee;
        _minAccepted = minAccepted;
        _maxFee = maxFee;
    }
    return self;
}

+ (nonnull instancetype)StellarLikeFeeStatsWithLastBaseFee:(int64_t)lastBaseFee
                                           modeAcceptedFee:(int64_t)modeAcceptedFee
                                               minAccepted:(int64_t)minAccepted
                                                    maxFee:(int64_t)maxFee
{
    return [[self alloc] initWithLastBaseFee:lastBaseFee
                             modeAcceptedFee:modeAcceptedFee
                                 minAccepted:minAccepted
                                      maxFee:maxFee];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@ %p lastBaseFee:%@ modeAcceptedFee:%@ minAccepted:%@ maxFee:%@>", self.class, (void *)self, @(self.lastBaseFee), @(self.modeAcceptedFee), @(self.minAccepted), @(self.maxFee)];
}

@end
