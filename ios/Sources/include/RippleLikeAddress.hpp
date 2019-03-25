// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from addresses.djinni

#ifndef DJINNI_GENERATED_RIPPLELIKEADDRESS_HPP
#define DJINNI_GENERATED_RIPPLELIKEADDRESS_HPP

#include <cstdint>
#include <string>
#include <vector>

namespace ledger { namespace core { namespace api {

struct RippleLikeNetworkParameters;

/** Helper class for manipulating Ripple like addresses */
class RippleLikeAddress {
public:
    virtual ~RippleLikeAddress() {}

    /**
     * Gets the version of the address
     * @return The version of the address
     */
    virtual std::vector<uint8_t> getVersion() = 0;

    /**
     * Gets the raw hash160 of the public key
     * @return The 20 bytes of the public key hash160
     */
    virtual std::vector<uint8_t> getHash160() = 0;

    /**
     * Gets the network parameters used for serializing the address
     * @return The network parameters of the address
     */
    virtual RippleLikeNetworkParameters getNetworkParameters() = 0;

    /**
     * Serializes the hash160 into a Base58 encoded address (with checksum)
     * @return The Base58 serialization
     */
    virtual std::string toBase58() = 0;
};

} } }  // namespace ledger::core::api
#endif //DJINNI_GENERATED_RIPPLELIKEADDRESS_HPP