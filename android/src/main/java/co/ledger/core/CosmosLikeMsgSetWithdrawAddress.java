// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

package co.ledger.core;

public final class CosmosLikeMsgSetWithdrawAddress {


    /*package*/ final String delegatorAddress;

    /*package*/ final String withdrawAddress;

    public CosmosLikeMsgSetWithdrawAddress(
            String delegatorAddress,
            String withdrawAddress) {
        this.delegatorAddress = delegatorAddress;
        this.withdrawAddress = withdrawAddress;
    }

    public String getDelegatorAddress() {
        return delegatorAddress;
    }

    public String getWithdrawAddress() {
        return withdrawAddress;
    }

    @Override
    public String toString() {
        return "CosmosLikeMsgSetWithdrawAddress{" +
                "delegatorAddress=" + delegatorAddress +
                "," + "withdrawAddress=" + withdrawAddress +
        "}";
    }

}