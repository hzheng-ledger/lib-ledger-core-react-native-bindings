// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

#import "LGCosmosLikeMsgMultiSend.h"


@implementation LGCosmosLikeMsgMultiSend

- (nonnull instancetype)initWithInputs:(nonnull NSArray<LGCosmosLikeMultiSendInput *> *)inputs
                               outputs:(nonnull NSArray<LGCosmosLikeMultiSendOutput *> *)outputs
{
    if (self = [super init]) {
        _inputs = [inputs copy];
        _outputs = [outputs copy];
    }
    return self;
}

+ (nonnull instancetype)CosmosLikeMsgMultiSendWithInputs:(nonnull NSArray<LGCosmosLikeMultiSendInput *> *)inputs
                                                 outputs:(nonnull NSArray<LGCosmosLikeMultiSendOutput *> *)outputs
{
    return [[self alloc] initWithInputs:inputs
                                outputs:outputs];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@ %p inputs:%@ outputs:%@>", self.class, (void *)self, self.inputs, self.outputs];
}

@end