// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from addresses.djinni

#ifndef DJINNI_GENERATED_COSMOSBECH32TYPE_HPP
#define DJINNI_GENERATED_COSMOSBECH32TYPE_HPP

#include <functional>
#include <iostream>
#include <string>

namespace ledger { namespace core { namespace api {

enum class CosmosBech32Type : int {
    PUBLIC_KEY,
    PUBLIC_KEY_VAL,
    PUBLIC_KEY_VAL_CONS,
    ADDRESS,
    ADDRESS_VAL,
    ADDRESS_VAL_CONS,
};
 std::string to_string(const CosmosBech32Type& cosmosBech32Type);
 std::ostream &operator<<(std::ostream &os, const CosmosBech32Type &o);

} } }  // namespace ledger::core::api

namespace std {

template <>
struct hash<::ledger::core::api::CosmosBech32Type> {
    size_t operator()(::ledger::core::api::CosmosBech32Type type) const {
        return std::hash<int>()(static_cast<int>(type));
    }
};

}  // namespace std
#endif //DJINNI_GENERATED_COSMOSBECH32TYPE_HPP
