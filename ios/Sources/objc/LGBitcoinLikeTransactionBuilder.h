// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from bitcoin_like_wallet.djinni

#import "LGBitcoinLikePickingStrategy.h"
#import "LGCurrency.h"
#import <Foundation/Foundation.h>
@class LGAmount;
@class LGBitcoinLikeScript;
@class LGBitcoinLikeTransaction;
@class LGBitcoinLikeTransactionBuilder;
@protocol LGBitcoinLikeTransactionCallback;


@interface LGBitcoinLikeTransactionBuilder : NSObject

/**
 * Add the given input to the final transaction.
 * @param transactionhash The hash of the transaction in where the UTXO can be located.
 * @params index Index of the UTXO in the previous transaction
 * @params sequence Sequence number to add at the end of the input serialization. This can be used for RBF transaction
 * @return A reference on the same builder in order to chain calls.
 */
- (nullable LGBitcoinLikeTransactionBuilder *)addInput:(nonnull NSString *)transactionHash
                                                 index:(int32_t)index
                                              sequence:(int32_t)sequence;

/**
 * Add the given output to the final transaction
 * @return A reference on the same builder in order to chain calls.
 */
- (nullable LGBitcoinLikeTransactionBuilder *)addOutput:(nullable LGAmount *)amount
                                                 script:(nullable LGBitcoinLikeScript *)script;

/**
 * If needed the transaction will send its change to the given path. It is possible to add multiple change path.
 * @return A reference on the same builder in order to chain calls.
 */
- (nullable LGBitcoinLikeTransactionBuilder *)addChangePath:(nonnull NSString *)path;

/**
 * Exclude UTXO from the coin selection (alias UTXO picking). You can call this method multiple times to exclude multiple
 * UTXO.
 * @param transactionHash The hash of the transaction in which this UTXO can be found.
 * @param outputIndex The position of the output in the previous transaction,
 * @return A reference on the same builder in order to chain calls.
 */
- (nullable LGBitcoinLikeTransactionBuilder *)excludeUtxo:(nonnull NSString *)transactionHash
                                              outputIndex:(int32_t)outputIndex;

/** @return A reference on the same builder in order to chain calls. */
- (nullable LGBitcoinLikeTransactionBuilder *)setNumberOfChangeAddresses:(int32_t)count;

/**
 * Set the maximum amount per change output. By default there is no max amount.
 * @return A reference on the same builder in order to chain calls.
 */
- (nullable LGBitcoinLikeTransactionBuilder *)setMaxAmountOnChange:(nullable LGAmount *)amount;

/**
 * Set the minimum amount per change output. By default this value is the dust value of the currency.
 * @return A reference on the same builder in order to chain calls.
 */
- (nullable LGBitcoinLikeTransactionBuilder *)setMinAmountOnChange:(nullable LGAmount *)amount;

/**
 * Set the UTXO picking strategy (see [[BitcoinLikePickingStrategy]]).
 * @param strategy The strategy to adopt in order to select which input to use in the transaction.
 * @param sequence The sequence value serialized at the end of the raw transaction. If you don't know what to put here
 * just use 0xFFFFFF
 * @return A reference on the same builder in order to chain calls.
 */
- (nullable LGBitcoinLikeTransactionBuilder *)pickInputs:(LGBitcoinLikePickingStrategy)strategy
                                                sequence:(int32_t)sequence;

/**
 * Send funds to the given address. This method can be called multiple times to send to multiple addresses.
 * @param amount The value to send
 * @param address Address of the recipient
 * @return A reference on the same builder in order to chain calls.
 */
- (nullable LGBitcoinLikeTransactionBuilder *)sendToAddress:(nullable LGAmount *)amount
                                                    address:(nonnull NSString *)address;

/**
 * Send all available funds to the given address.
 * @param address Address of the recipient
 * @return A reference on the same builder in order to chain calls.
 */
- (nullable LGBitcoinLikeTransactionBuilder *)wipeToAddress:(nonnull NSString *)address;

/**
 * Set the amount of fees per byte (of the raw transaction).
 * @return A reference on the same builder in order to chain calls.
 */
- (nullable LGBitcoinLikeTransactionBuilder *)setFeesPerByte:(nullable LGAmount *)fees;

/** Build a transaction from the given builder parameters. */
- (void)build:(nullable id<LGBitcoinLikeTransactionCallback>)callback;

/**
 * Creates a clone of this builder.
 * @return A copy of the current builder instance.
 */
- (nullable LGBitcoinLikeTransactionBuilder *)clone;

/** Reset the current instance to its initial state */
- (void)reset;

+ (nullable LGBitcoinLikeTransaction *)parseRawUnsignedTransaction:(nonnull LGCurrency *)currency
                                                    rawTransaction:(nonnull NSData *)rawTransaction;

@end