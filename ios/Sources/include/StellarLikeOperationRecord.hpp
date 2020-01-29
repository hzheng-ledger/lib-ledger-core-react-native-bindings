// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from stellar_like_wallet.djinni

#ifndef DJINNI_GENERATED_STELLARLIKEOPERATIONRECORD_HPP
#define DJINNI_GENERATED_STELLARLIKEOPERATIONRECORD_HPP

#include "../utils/optional.hpp"
#include "StellarLikeAsset.hpp"
#include "StellarLikeOperationType.hpp"
#include <iostream>
#include <memory>
#include <string>
#include <utility>

namespace ledger { namespace core { namespace api {

class Amount;

struct StellarLikeOperationRecord final {
    std::string hash;
    bool successful;
    StellarLikeOperationType operationType;
    std::string transactionHash;
    StellarLikeAsset asset;
    std::experimental::optional<StellarLikeAsset> sourceAsset;
    std::shared_ptr<Amount> sourceAmount;

    StellarLikeOperationRecord(std::string hash_,
                               bool successful_,
                               StellarLikeOperationType operationType_,
                               std::string transactionHash_,
                               StellarLikeAsset asset_,
                               std::experimental::optional<StellarLikeAsset> sourceAsset_,
                               std::shared_ptr<Amount> sourceAmount_)
    : hash(std::move(hash_))
    , successful(std::move(successful_))
    , operationType(std::move(operationType_))
    , transactionHash(std::move(transactionHash_))
    , asset(std::move(asset_))
    , sourceAsset(std::move(sourceAsset_))
    , sourceAmount(std::move(sourceAmount_))
    {}

    StellarLikeOperationRecord(const StellarLikeOperationRecord& cpy) {
       this->hash = cpy.hash;
       this->successful = cpy.successful;
       this->operationType = cpy.operationType;
       this->transactionHash = cpy.transactionHash;
       this->asset = cpy.asset;
       this->sourceAsset = cpy.sourceAsset;
       this->sourceAmount = cpy.sourceAmount;
    }

    StellarLikeOperationRecord() = default;


    StellarLikeOperationRecord& operator=(const StellarLikeOperationRecord& cpy) {
       this->hash = cpy.hash;
       this->successful = cpy.successful;
       this->operationType = cpy.operationType;
       this->transactionHash = cpy.transactionHash;
       this->asset = cpy.asset;
       this->sourceAsset = cpy.sourceAsset;
       this->sourceAmount = cpy.sourceAmount;
       return *this;
    }

    template <class Archive>
    void load(Archive& archive) {
        archive(hash, successful, operationType, transactionHash, asset, sourceAsset, sourceAmount);
    }

    template <class Archive>
    void save(Archive& archive) const {
        archive(hash, successful, operationType, transactionHash, asset, sourceAsset, sourceAmount);
    }
};

} } }  // namespace ledger::core::api
#endif //DJINNI_GENERATED_STELLARLIKEOPERATIONRECORD_HPP
