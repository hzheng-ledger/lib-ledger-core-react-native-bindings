// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

package co.ledger.core;

public final class CosmosLikeMsgEditValidator {


    /*package*/ final CosmosLikeValidatorDescription descr;

    /*package*/ final String validatorAddress;

    /*package*/ final String commissionRate;

    /*package*/ final String minSelfDelegation;

    public CosmosLikeMsgEditValidator(
            CosmosLikeValidatorDescription descr,
            String validatorAddress,
            String commissionRate,
            String minSelfDelegation) {
        this.descr = descr;
        this.validatorAddress = validatorAddress;
        this.commissionRate = commissionRate;
        this.minSelfDelegation = minSelfDelegation;
    }

    public CosmosLikeValidatorDescription getDescr() {
        return descr;
    }

    public String getValidatorAddress() {
        return validatorAddress;
    }

    public String getCommissionRate() {
        return commissionRate;
    }

    public String getMinSelfDelegation() {
        return minSelfDelegation;
    }

    @Override
    public String toString() {
        return "CosmosLikeMsgEditValidator{" +
                "descr=" + descr +
                "," + "validatorAddress=" + validatorAddress +
                "," + "commissionRate=" + commissionRate +
                "," + "minSelfDelegation=" + minSelfDelegation +
        "}";
    }

}