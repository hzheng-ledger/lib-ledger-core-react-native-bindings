// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#ifndef DJINNI_GENERATED_RIPPLELIKETRANSACTIONCALLBACK_HPP
#define DJINNI_GENERATED_RIPPLELIKETRANSACTIONCALLBACK_HPP

#include "../utils/optional.hpp"
#include <memory>

namespace ledger { namespace core { namespace api {

class RippleLikeTransaction;
struct Error;

/** Callback triggered by main completed task, returning optional result of template type T. */
class RippleLikeTransactionCallback {
public:
    virtual ~RippleLikeTransactionCallback() {}

    /**
     * Method triggered when main task complete.
     * @params result optional of type T, non null if main task failed
     * @params error optional of type Error, non null if main task succeeded
     */
    virtual void onCallback(const std::shared_ptr<RippleLikeTransaction> & result, const std::experimental::optional<Error> & error) = 0;
};

} } }  // namespace ledger::core::api
#endif //DJINNI_GENERATED_RIPPLELIKETRANSACTIONCALLBACK_HPP