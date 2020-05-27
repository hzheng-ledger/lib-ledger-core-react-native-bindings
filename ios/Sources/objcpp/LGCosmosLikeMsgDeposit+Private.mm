// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

#import "LGCosmosLikeMsgDeposit+Private.h"
#import "DJIMarshal+Private.h"
#import "LGCosmosLikeAmount+Private.h"
#include <cassert>

namespace djinni_generated {

auto CosmosLikeMsgDeposit::toCpp(ObjcType obj) -> CppType
{
    assert(obj);
    return {::djinni::String::toCpp(obj.depositor),
            ::djinni::String::toCpp(obj.proposalId),
            ::djinni::List<::djinni_generated::CosmosLikeAmount>::toCpp(obj.amount)};
}

auto CosmosLikeMsgDeposit::fromCpp(const CppType& cpp) -> ObjcType
{
    return [[LGCosmosLikeMsgDeposit alloc] initWithDepositor:(::djinni::String::fromCpp(cpp.depositor))
                                                  proposalId:(::djinni::String::fromCpp(cpp.proposalId))
                                                      amount:(::djinni::List<::djinni_generated::CosmosLikeAmount>::fromCpp(cpp.amount))];
}

}  // namespace djinni_generated