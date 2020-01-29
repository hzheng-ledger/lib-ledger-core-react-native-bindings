// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from stellar_like_wallet.djinni

#ifndef DJINNI_GENERATED_STELLARLIKEOPERATION_HPP
#define DJINNI_GENERATED_STELLARLIKEOPERATION_HPP

#include <memory>

namespace ledger { namespace core { namespace api {

class StellarLikeTransaction;
struct StellarLikeOperationRecord;

class StellarLikeOperation {
public:
    virtual ~StellarLikeOperation() {}

    /** Get the underlying operation information */
    virtual StellarLikeOperationRecord getRecord() = 0;

    /** Get the underlying transaction in which this operation can be found. */
    virtual std::shared_ptr<StellarLikeTransaction> getTransaction() = 0;
};

} } }  // namespace ledger::core::api
#endif //DJINNI_GENERATED_STELLARLIKEOPERATION_HPP
