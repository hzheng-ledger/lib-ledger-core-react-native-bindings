// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

#import "LGCosmosLikeMsgEditValidator+Private.h"
#import "DJIMarshal+Private.h"
#import "LGCosmosLikeValidatorDescription+Private.h"
#include <cassert>

namespace djinni_generated {

auto CosmosLikeMsgEditValidator::toCpp(ObjcType obj) -> CppType
{
    assert(obj);
    return {::djinni::Optional<std::experimental::optional, ::djinni_generated::CosmosLikeValidatorDescription>::toCpp(obj.descr),
            ::djinni::String::toCpp(obj.validatorAddress),
            ::djinni::Optional<std::experimental::optional, ::djinni::String>::toCpp(obj.commissionRate),
            ::djinni::Optional<std::experimental::optional, ::djinni::String>::toCpp(obj.minSelfDelegation)};
}

auto CosmosLikeMsgEditValidator::fromCpp(const CppType& cpp) -> ObjcType
{
    return [[LGCosmosLikeMsgEditValidator alloc] initWithDescr:(::djinni::Optional<std::experimental::optional, ::djinni_generated::CosmosLikeValidatorDescription>::fromCpp(cpp.descr))
                                              validatorAddress:(::djinni::String::fromCpp(cpp.validatorAddress))
                                                commissionRate:(::djinni::Optional<std::experimental::optional, ::djinni::String>::fromCpp(cpp.commissionRate))
                                             minSelfDelegation:(::djinni::Optional<std::experimental::optional, ::djinni::String>::fromCpp(cpp.minSelfDelegation))];
}

}  // namespace djinni_generated