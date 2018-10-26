// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from bitcoin_like_wallet.djinni

#import "LGBitcoinLikeTransactionBuilder+Private.h"
#import "LGBitcoinLikeTransactionBuilder.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "LGAmount+Private.h"
#import "LGBitcoinLikePickingStrategy+Private.h"
#import "LGBitcoinLikeScript+Private.h"
#import "LGBitcoinLikeTransaction+Private.h"
#import "LGBitcoinLikeTransactionCallback+Private.h"
#import "LGCurrency+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGBitcoinLikeTransactionBuilder ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::BitcoinLikeTransactionBuilder>&)cppRef;

@end

@implementation LGBitcoinLikeTransactionBuilder {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::BitcoinLikeTransactionBuilder>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::BitcoinLikeTransactionBuilder>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nullable LGBitcoinLikeTransactionBuilder *)addInput:(nonnull NSString *)transactionHash
                                                 index:(int32_t)index
                                              sequence:(int32_t)sequence {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->addInput(::djinni::String::toCpp(transactionHash),
                                                            ::djinni::I32::toCpp(index),
                                                            ::djinni::I32::toCpp(sequence));
        return ::djinni_generated::BitcoinLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBitcoinLikeTransactionBuilder *)addOutput:(nullable LGAmount *)amount
                                                 script:(nullable LGBitcoinLikeScript *)script {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->addOutput(::djinni_generated::Amount::toCpp(amount),
                                                             ::djinni_generated::BitcoinLikeScript::toCpp(script));
        return ::djinni_generated::BitcoinLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBitcoinLikeTransactionBuilder *)addChangePath:(nonnull NSString *)path {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->addChangePath(::djinni::String::toCpp(path));
        return ::djinni_generated::BitcoinLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBitcoinLikeTransactionBuilder *)excludeUtxo:(nonnull NSString *)transactionHash
                                              outputIndex:(int32_t)outputIndex {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->excludeUtxo(::djinni::String::toCpp(transactionHash),
                                                               ::djinni::I32::toCpp(outputIndex));
        return ::djinni_generated::BitcoinLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBitcoinLikeTransactionBuilder *)setNumberOfChangeAddresses:(int32_t)count {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->setNumberOfChangeAddresses(::djinni::I32::toCpp(count));
        return ::djinni_generated::BitcoinLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBitcoinLikeTransactionBuilder *)setMaxAmountOnChange:(nullable LGAmount *)amount {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->setMaxAmountOnChange(::djinni_generated::Amount::toCpp(amount));
        return ::djinni_generated::BitcoinLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBitcoinLikeTransactionBuilder *)setMinAmountOnChange:(nullable LGAmount *)amount {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->setMinAmountOnChange(::djinni_generated::Amount::toCpp(amount));
        return ::djinni_generated::BitcoinLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBitcoinLikeTransactionBuilder *)pickInputs:(LGBitcoinLikePickingStrategy)strategy
                                                sequence:(int32_t)sequence {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->pickInputs(::djinni::Enum<::ledger::core::api::BitcoinLikePickingStrategy, LGBitcoinLikePickingStrategy>::toCpp(strategy),
                                                              ::djinni::I32::toCpp(sequence));
        return ::djinni_generated::BitcoinLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBitcoinLikeTransactionBuilder *)sendToAddress:(nullable LGAmount *)amount
                                                    address:(nonnull NSString *)address {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->sendToAddress(::djinni_generated::Amount::toCpp(amount),
                                                                 ::djinni::String::toCpp(address));
        return ::djinni_generated::BitcoinLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBitcoinLikeTransactionBuilder *)wipeToAddress:(nonnull NSString *)address {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->wipeToAddress(::djinni::String::toCpp(address));
        return ::djinni_generated::BitcoinLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBitcoinLikeTransactionBuilder *)setFeesPerByte:(nullable LGAmount *)fees {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->setFeesPerByte(::djinni_generated::Amount::toCpp(fees));
        return ::djinni_generated::BitcoinLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)build:(nullable id<LGBitcoinLikeTransactionCallback>)callback {
    try {
        _cppRefHandle.get()->build(::djinni_generated::BitcoinLikeTransactionCallback::toCpp(callback));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBitcoinLikeTransactionBuilder *)clone {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->clone();
        return ::djinni_generated::BitcoinLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)reset {
    try {
        _cppRefHandle.get()->reset();
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nullable LGBitcoinLikeTransaction *)parseRawUnsignedTransaction:(nonnull LGCurrency *)currency
                                                    rawTransaction:(nonnull NSData *)rawTransaction
                                                currentBlockHeight:(nullable NSNumber *)currentBlockHeight {
    try {
        auto objcpp_result_ = ::ledger::core::api::BitcoinLikeTransactionBuilder::parseRawUnsignedTransaction(::djinni_generated::Currency::toCpp(currency),
                                                                                                              ::djinni::Binary::toCpp(rawTransaction),
                                                                                                              ::djinni::Optional<std::experimental::optional, ::djinni::I32>::toCpp(currentBlockHeight));
        return ::djinni_generated::BitcoinLikeTransaction::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto BitcoinLikeTransactionBuilder::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto BitcoinLikeTransactionBuilder::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGBitcoinLikeTransactionBuilder>(cpp);
}

}  // namespace djinni_generated

@end
