// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from errors.djinni

#include "ErrorCode.hpp"  // my header
#include "enum_from_string.hpp"

namespace ledger { namespace core { namespace api {

std::string to_string(const ErrorCode& errorCode) {
    switch (errorCode) {
        case ErrorCode::EC_PRIV_KEY_INVALID_FORMAT: return "EC_PRIV_KEY_INVALID_FORMAT";
        case ErrorCode::EC_PUB_KEY_INVALID: return "EC_PUB_KEY_INVALID";
        case ErrorCode::EC_DER_SIGNATURE_INVALID: return "EC_DER_SIGNATURE_INVALID";
        case ErrorCode::EC_SIGN_FAILED: return "EC_SIGN_FAILED";
        case ErrorCode::WALLET_NOT_FOUND: return "WALLET_NOT_FOUND";
        case ErrorCode::WALLET_ALREADY_EXISTS: return "WALLET_ALREADY_EXISTS";
        case ErrorCode::RAW_TRANSACTION_NOT_FOUND: return "RAW_TRANSACTION_NOT_FOUND";
        case ErrorCode::ACCOUNT_ALREADY_EXISTS: return "ACCOUNT_ALREADY_EXISTS";
        case ErrorCode::ACCOUNT_NOT_FOUND: return "ACCOUNT_NOT_FOUND";
        case ErrorCode::MISSING_DERIVATION: return "MISSING_DERIVATION";
        case ErrorCode::BLOCK_NOT_FOUND: return "BLOCK_NOT_FOUND";
        case ErrorCode::CANCELLED_BY_USER: return "CANCELLED_BY_USER";
        case ErrorCode::UNSUPPORTED_CURRENCY: return "UNSUPPORTED_CURRENCY";
        case ErrorCode::CURRENCY_ALREADY_EXISTS: return "CURRENCY_ALREADY_EXISTS";
        case ErrorCode::CURRENCY_NOT_FOUND: return "CURRENCY_NOT_FOUND";
        case ErrorCode::CURRENCY_UNIT_NOT_FOUND: return "CURRENCY_UNIT_NOT_FOUND";
        case ErrorCode::INVALID_BASE58_FORMAT: return "INVALID_BASE58_FORMAT";
        case ErrorCode::INVALID_EIP55_FORMAT: return "INVALID_EIP55_FORMAT";
        case ErrorCode::INVALID_CHECKSUM: return "INVALID_CHECKSUM";
        case ErrorCode::INVALID_VERSION: return "INVALID_VERSION";
        case ErrorCode::PRIVATE_DERIVATION_NOT_SUPPORTED: return "PRIVATE_DERIVATION_NOT_SUPPORTED";
        case ErrorCode::INVALID_NETWORK_ADDRESS_VERSION: return "INVALID_NETWORK_ADDRESS_VERSION";
        case ErrorCode::INCOMPLETE_TRANSACTION: return "INCOMPLETE_TRANSACTION";
        case ErrorCode::RUNTIME_ERROR: return "RUNTIME_ERROR";
        case ErrorCode::OUT_OF_RANGE: return "OUT_OF_RANGE";
        case ErrorCode::ILLEGAL_ARGUMENT: return "ILLEGAL_ARGUMENT";
        case ErrorCode::INVALID_ARGUMENT: return "INVALID_ARGUMENT";
        case ErrorCode::ILLEGAL_STATE: return "ILLEGAL_STATE";
        case ErrorCode::NULL_POINTER: return "NULL_POINTER";
        case ErrorCode::UNSUPPORTED_OPERATION: return "UNSUPPORTED_OPERATION";
        case ErrorCode::UNKNOWN: return "UNKNOWN";
        case ErrorCode::IMPLEMENTATION_IS_MISSING: return "IMPLEMENTATION_IS_MISSING";
        case ErrorCode::FUTURE_WAS_SUCCESSFULL: return "FUTURE_WAS_SUCCESSFULL";
        case ErrorCode::ALREADY_COMPLETED: return "ALREADY_COMPLETED";
        case ErrorCode::NO_SUCH_ELEMENT: return "NO_SUCH_ELEMENT";
        case ErrorCode::UNABLE_TO_OPEN_LEVELDB: return "UNABLE_TO_OPEN_LEVELDB";
        case ErrorCode::NO_INTERNET_CONNECTIVITY: return "NO_INTERNET_CONNECTIVITY";
        case ErrorCode::UNABLE_TO_RESOLVE_HOST: return "UNABLE_TO_RESOLVE_HOST";
        case ErrorCode::UNABLE_TO_CONNECT_TO_HOST: return "UNABLE_TO_CONNECT_TO_HOST";
        case ErrorCode::HTTP_ERROR: return "HTTP_ERROR";
        case ErrorCode::SSL_ERROR: return "SSL_ERROR";
        case ErrorCode::TOO_MANY_REDIRECT: return "TOO_MANY_REDIRECT";
        case ErrorCode::AUTHENTICATION_REQUIRED: return "AUTHENTICATION_REQUIRED";
        case ErrorCode::HTTP_TIMEOUT: return "HTTP_TIMEOUT";
        case ErrorCode::PROXY_ERROR: return "PROXY_ERROR";
        case ErrorCode::API_ERROR: return "API_ERROR";
        case ErrorCode::TRANSACTION_NOT_FOUND: return "TRANSACTION_NOT_FOUND";
        case ErrorCode::INVALID_DATE_FORMAT: return "INVALID_DATE_FORMAT";
        case ErrorCode::INVALID_DERIVATION_SCHEME: return "INVALID_DERIVATION_SCHEME";
        case ErrorCode::UNKNOWN_KEYCHAIN_ENGINE: return "UNKNOWN_KEYCHAIN_ENGINE";
        case ErrorCode::UNKNOWN_BLOCKCHAIN_EXPLORER_ENGINE: return "UNKNOWN_BLOCKCHAIN_EXPLORER_ENGINE";
        case ErrorCode::UNKNOWN_BLOCKCHAIN_OBSERVER_ENGINE: return "UNKNOWN_BLOCKCHAIN_OBSERVER_ENGINE";
        case ErrorCode::UNKNOWN_SYNCHRONIZATION_ENGINE: return "UNKNOWN_SYNCHRONIZATION_ENGINE";
        case ErrorCode::DATABASE_EXCEPTION: return "DATABASE_EXCEPTION";
        case ErrorCode::NOT_ENOUGH_FUNDS: return "NOT_ENOUGH_FUNDS";
        case ErrorCode::BAD_CAST: return "BAD_CAST";
        case ErrorCode::LINK_NON_TAIL_FILTER: return "LINK_NON_TAIL_FILTER";
        case ErrorCode::INVALID_BECH32_FORMAT: return "INVALID_BECH32_FORMAT";
        case ErrorCode::INVALID_STELLAR_ADDRESS_FORMAT: return "INVALID_STELLAR_ADDRESS_FORMAT";
        case ErrorCode::INVALID_STELLAR_MEMO_TYPE: return "INVALID_STELLAR_MEMO_TYPE";
    };
};
template <>
ErrorCode from_string(const std::string& errorCode) {
    if (errorCode == "EC_PRIV_KEY_INVALID_FORMAT") return ErrorCode::EC_PRIV_KEY_INVALID_FORMAT;
    else if (errorCode == "EC_PUB_KEY_INVALID") return ErrorCode::EC_PUB_KEY_INVALID;
    else if (errorCode == "EC_DER_SIGNATURE_INVALID") return ErrorCode::EC_DER_SIGNATURE_INVALID;
    else if (errorCode == "EC_SIGN_FAILED") return ErrorCode::EC_SIGN_FAILED;
    else if (errorCode == "WALLET_NOT_FOUND") return ErrorCode::WALLET_NOT_FOUND;
    else if (errorCode == "WALLET_ALREADY_EXISTS") return ErrorCode::WALLET_ALREADY_EXISTS;
    else if (errorCode == "RAW_TRANSACTION_NOT_FOUND") return ErrorCode::RAW_TRANSACTION_NOT_FOUND;
    else if (errorCode == "ACCOUNT_ALREADY_EXISTS") return ErrorCode::ACCOUNT_ALREADY_EXISTS;
    else if (errorCode == "ACCOUNT_NOT_FOUND") return ErrorCode::ACCOUNT_NOT_FOUND;
    else if (errorCode == "MISSING_DERIVATION") return ErrorCode::MISSING_DERIVATION;
    else if (errorCode == "BLOCK_NOT_FOUND") return ErrorCode::BLOCK_NOT_FOUND;
    else if (errorCode == "CANCELLED_BY_USER") return ErrorCode::CANCELLED_BY_USER;
    else if (errorCode == "UNSUPPORTED_CURRENCY") return ErrorCode::UNSUPPORTED_CURRENCY;
    else if (errorCode == "CURRENCY_ALREADY_EXISTS") return ErrorCode::CURRENCY_ALREADY_EXISTS;
    else if (errorCode == "CURRENCY_NOT_FOUND") return ErrorCode::CURRENCY_NOT_FOUND;
    else if (errorCode == "CURRENCY_UNIT_NOT_FOUND") return ErrorCode::CURRENCY_UNIT_NOT_FOUND;
    else if (errorCode == "INVALID_BASE58_FORMAT") return ErrorCode::INVALID_BASE58_FORMAT;
    else if (errorCode == "INVALID_EIP55_FORMAT") return ErrorCode::INVALID_EIP55_FORMAT;
    else if (errorCode == "INVALID_CHECKSUM") return ErrorCode::INVALID_CHECKSUM;
    else if (errorCode == "INVALID_VERSION") return ErrorCode::INVALID_VERSION;
    else if (errorCode == "PRIVATE_DERIVATION_NOT_SUPPORTED") return ErrorCode::PRIVATE_DERIVATION_NOT_SUPPORTED;
    else if (errorCode == "INVALID_NETWORK_ADDRESS_VERSION") return ErrorCode::INVALID_NETWORK_ADDRESS_VERSION;
    else if (errorCode == "INCOMPLETE_TRANSACTION") return ErrorCode::INCOMPLETE_TRANSACTION;
    else if (errorCode == "RUNTIME_ERROR") return ErrorCode::RUNTIME_ERROR;
    else if (errorCode == "OUT_OF_RANGE") return ErrorCode::OUT_OF_RANGE;
    else if (errorCode == "ILLEGAL_ARGUMENT") return ErrorCode::ILLEGAL_ARGUMENT;
    else if (errorCode == "INVALID_ARGUMENT") return ErrorCode::INVALID_ARGUMENT;
    else if (errorCode == "ILLEGAL_STATE") return ErrorCode::ILLEGAL_STATE;
    else if (errorCode == "NULL_POINTER") return ErrorCode::NULL_POINTER;
    else if (errorCode == "UNSUPPORTED_OPERATION") return ErrorCode::UNSUPPORTED_OPERATION;
    else if (errorCode == "UNKNOWN") return ErrorCode::UNKNOWN;
    else if (errorCode == "IMPLEMENTATION_IS_MISSING") return ErrorCode::IMPLEMENTATION_IS_MISSING;
    else if (errorCode == "FUTURE_WAS_SUCCESSFULL") return ErrorCode::FUTURE_WAS_SUCCESSFULL;
    else if (errorCode == "ALREADY_COMPLETED") return ErrorCode::ALREADY_COMPLETED;
    else if (errorCode == "NO_SUCH_ELEMENT") return ErrorCode::NO_SUCH_ELEMENT;
    else if (errorCode == "UNABLE_TO_OPEN_LEVELDB") return ErrorCode::UNABLE_TO_OPEN_LEVELDB;
    else if (errorCode == "NO_INTERNET_CONNECTIVITY") return ErrorCode::NO_INTERNET_CONNECTIVITY;
    else if (errorCode == "UNABLE_TO_RESOLVE_HOST") return ErrorCode::UNABLE_TO_RESOLVE_HOST;
    else if (errorCode == "UNABLE_TO_CONNECT_TO_HOST") return ErrorCode::UNABLE_TO_CONNECT_TO_HOST;
    else if (errorCode == "HTTP_ERROR") return ErrorCode::HTTP_ERROR;
    else if (errorCode == "SSL_ERROR") return ErrorCode::SSL_ERROR;
    else if (errorCode == "TOO_MANY_REDIRECT") return ErrorCode::TOO_MANY_REDIRECT;
    else if (errorCode == "AUTHENTICATION_REQUIRED") return ErrorCode::AUTHENTICATION_REQUIRED;
    else if (errorCode == "HTTP_TIMEOUT") return ErrorCode::HTTP_TIMEOUT;
    else if (errorCode == "PROXY_ERROR") return ErrorCode::PROXY_ERROR;
    else if (errorCode == "API_ERROR") return ErrorCode::API_ERROR;
    else if (errorCode == "TRANSACTION_NOT_FOUND") return ErrorCode::TRANSACTION_NOT_FOUND;
    else if (errorCode == "INVALID_DATE_FORMAT") return ErrorCode::INVALID_DATE_FORMAT;
    else if (errorCode == "INVALID_DERIVATION_SCHEME") return ErrorCode::INVALID_DERIVATION_SCHEME;
    else if (errorCode == "UNKNOWN_KEYCHAIN_ENGINE") return ErrorCode::UNKNOWN_KEYCHAIN_ENGINE;
    else if (errorCode == "UNKNOWN_BLOCKCHAIN_EXPLORER_ENGINE") return ErrorCode::UNKNOWN_BLOCKCHAIN_EXPLORER_ENGINE;
    else if (errorCode == "UNKNOWN_BLOCKCHAIN_OBSERVER_ENGINE") return ErrorCode::UNKNOWN_BLOCKCHAIN_OBSERVER_ENGINE;
    else if (errorCode == "UNKNOWN_SYNCHRONIZATION_ENGINE") return ErrorCode::UNKNOWN_SYNCHRONIZATION_ENGINE;
    else if (errorCode == "DATABASE_EXCEPTION") return ErrorCode::DATABASE_EXCEPTION;
    else if (errorCode == "NOT_ENOUGH_FUNDS") return ErrorCode::NOT_ENOUGH_FUNDS;
    else if (errorCode == "BAD_CAST") return ErrorCode::BAD_CAST;
    else if (errorCode == "LINK_NON_TAIL_FILTER") return ErrorCode::LINK_NON_TAIL_FILTER;
    else if (errorCode == "INVALID_BECH32_FORMAT") return ErrorCode::INVALID_BECH32_FORMAT;
    else if (errorCode == "INVALID_STELLAR_ADDRESS_FORMAT") return ErrorCode::INVALID_STELLAR_ADDRESS_FORMAT;
    else return ErrorCode::INVALID_STELLAR_MEMO_TYPE;
};

std::ostream &operator<<(std::ostream &os, const ErrorCode &o)
{
    switch (o) {
        case ErrorCode::EC_PRIV_KEY_INVALID_FORMAT:  return os << "EC_PRIV_KEY_INVALID_FORMAT";
        case ErrorCode::EC_PUB_KEY_INVALID:  return os << "EC_PUB_KEY_INVALID";
        case ErrorCode::EC_DER_SIGNATURE_INVALID:  return os << "EC_DER_SIGNATURE_INVALID";
        case ErrorCode::EC_SIGN_FAILED:  return os << "EC_SIGN_FAILED";
        case ErrorCode::WALLET_NOT_FOUND:  return os << "WALLET_NOT_FOUND";
        case ErrorCode::WALLET_ALREADY_EXISTS:  return os << "WALLET_ALREADY_EXISTS";
        case ErrorCode::RAW_TRANSACTION_NOT_FOUND:  return os << "RAW_TRANSACTION_NOT_FOUND";
        case ErrorCode::ACCOUNT_ALREADY_EXISTS:  return os << "ACCOUNT_ALREADY_EXISTS";
        case ErrorCode::ACCOUNT_NOT_FOUND:  return os << "ACCOUNT_NOT_FOUND";
        case ErrorCode::MISSING_DERIVATION:  return os << "MISSING_DERIVATION";
        case ErrorCode::BLOCK_NOT_FOUND:  return os << "BLOCK_NOT_FOUND";
        case ErrorCode::CANCELLED_BY_USER:  return os << "CANCELLED_BY_USER";
        case ErrorCode::UNSUPPORTED_CURRENCY:  return os << "UNSUPPORTED_CURRENCY";
        case ErrorCode::CURRENCY_ALREADY_EXISTS:  return os << "CURRENCY_ALREADY_EXISTS";
        case ErrorCode::CURRENCY_NOT_FOUND:  return os << "CURRENCY_NOT_FOUND";
        case ErrorCode::CURRENCY_UNIT_NOT_FOUND:  return os << "CURRENCY_UNIT_NOT_FOUND";
        case ErrorCode::INVALID_BASE58_FORMAT:  return os << "INVALID_BASE58_FORMAT";
        case ErrorCode::INVALID_EIP55_FORMAT:  return os << "INVALID_EIP55_FORMAT";
        case ErrorCode::INVALID_CHECKSUM:  return os << "INVALID_CHECKSUM";
        case ErrorCode::INVALID_VERSION:  return os << "INVALID_VERSION";
        case ErrorCode::PRIVATE_DERIVATION_NOT_SUPPORTED:  return os << "PRIVATE_DERIVATION_NOT_SUPPORTED";
        case ErrorCode::INVALID_NETWORK_ADDRESS_VERSION:  return os << "INVALID_NETWORK_ADDRESS_VERSION";
        case ErrorCode::INCOMPLETE_TRANSACTION:  return os << "INCOMPLETE_TRANSACTION";
        case ErrorCode::RUNTIME_ERROR:  return os << "RUNTIME_ERROR";
        case ErrorCode::OUT_OF_RANGE:  return os << "OUT_OF_RANGE";
        case ErrorCode::ILLEGAL_ARGUMENT:  return os << "ILLEGAL_ARGUMENT";
        case ErrorCode::INVALID_ARGUMENT:  return os << "INVALID_ARGUMENT";
        case ErrorCode::ILLEGAL_STATE:  return os << "ILLEGAL_STATE";
        case ErrorCode::NULL_POINTER:  return os << "NULL_POINTER";
        case ErrorCode::UNSUPPORTED_OPERATION:  return os << "UNSUPPORTED_OPERATION";
        case ErrorCode::UNKNOWN:  return os << "UNKNOWN";
        case ErrorCode::IMPLEMENTATION_IS_MISSING:  return os << "IMPLEMENTATION_IS_MISSING";
        case ErrorCode::FUTURE_WAS_SUCCESSFULL:  return os << "FUTURE_WAS_SUCCESSFULL";
        case ErrorCode::ALREADY_COMPLETED:  return os << "ALREADY_COMPLETED";
        case ErrorCode::NO_SUCH_ELEMENT:  return os << "NO_SUCH_ELEMENT";
        case ErrorCode::UNABLE_TO_OPEN_LEVELDB:  return os << "UNABLE_TO_OPEN_LEVELDB";
        case ErrorCode::NO_INTERNET_CONNECTIVITY:  return os << "NO_INTERNET_CONNECTIVITY";
        case ErrorCode::UNABLE_TO_RESOLVE_HOST:  return os << "UNABLE_TO_RESOLVE_HOST";
        case ErrorCode::UNABLE_TO_CONNECT_TO_HOST:  return os << "UNABLE_TO_CONNECT_TO_HOST";
        case ErrorCode::HTTP_ERROR:  return os << "HTTP_ERROR";
        case ErrorCode::SSL_ERROR:  return os << "SSL_ERROR";
        case ErrorCode::TOO_MANY_REDIRECT:  return os << "TOO_MANY_REDIRECT";
        case ErrorCode::AUTHENTICATION_REQUIRED:  return os << "AUTHENTICATION_REQUIRED";
        case ErrorCode::HTTP_TIMEOUT:  return os << "HTTP_TIMEOUT";
        case ErrorCode::PROXY_ERROR:  return os << "PROXY_ERROR";
        case ErrorCode::API_ERROR:  return os << "API_ERROR";
        case ErrorCode::TRANSACTION_NOT_FOUND:  return os << "TRANSACTION_NOT_FOUND";
        case ErrorCode::INVALID_DATE_FORMAT:  return os << "INVALID_DATE_FORMAT";
        case ErrorCode::INVALID_DERIVATION_SCHEME:  return os << "INVALID_DERIVATION_SCHEME";
        case ErrorCode::UNKNOWN_KEYCHAIN_ENGINE:  return os << "UNKNOWN_KEYCHAIN_ENGINE";
        case ErrorCode::UNKNOWN_BLOCKCHAIN_EXPLORER_ENGINE:  return os << "UNKNOWN_BLOCKCHAIN_EXPLORER_ENGINE";
        case ErrorCode::UNKNOWN_BLOCKCHAIN_OBSERVER_ENGINE:  return os << "UNKNOWN_BLOCKCHAIN_OBSERVER_ENGINE";
        case ErrorCode::UNKNOWN_SYNCHRONIZATION_ENGINE:  return os << "UNKNOWN_SYNCHRONIZATION_ENGINE";
        case ErrorCode::DATABASE_EXCEPTION:  return os << "DATABASE_EXCEPTION";
        case ErrorCode::NOT_ENOUGH_FUNDS:  return os << "NOT_ENOUGH_FUNDS";
        case ErrorCode::BAD_CAST:  return os << "BAD_CAST";
        case ErrorCode::LINK_NON_TAIL_FILTER:  return os << "LINK_NON_TAIL_FILTER";
        case ErrorCode::INVALID_BECH32_FORMAT:  return os << "INVALID_BECH32_FORMAT";
        case ErrorCode::INVALID_STELLAR_ADDRESS_FORMAT:  return os << "INVALID_STELLAR_ADDRESS_FORMAT";
        case ErrorCode::INVALID_STELLAR_MEMO_TYPE:  return os << "INVALID_STELLAR_MEMO_TYPE";
    }
}

} } }  // namespace ledger::core::api
