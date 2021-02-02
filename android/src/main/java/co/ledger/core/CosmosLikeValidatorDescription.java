// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from validators.djinni

package co.ledger.core;

/** Human readable description of validators */
public final class CosmosLikeValidatorDescription {


    /*package*/ final String moniker;

    /*package*/ final String identity;

    /*package*/ final String website;

    /*package*/ final String securityContact;

    /*package*/ final String details;

    public CosmosLikeValidatorDescription(
            String moniker,
            String identity,
            String website,
            String securityContact,
            String details) {
        this.moniker = moniker;
        this.identity = identity;
        this.website = website;
        this.securityContact = securityContact;
        this.details = details;
    }

    public String getMoniker() {
        return moniker;
    }

    public String getIdentity() {
        return identity;
    }

    public String getWebsite() {
        return website;
    }

    public String getSecurityContact() {
        return securityContact;
    }

    public String getDetails() {
        return details;
    }

    @Override
    public String toString() {
        return "CosmosLikeValidatorDescription{" +
                "moniker=" + moniker +
                "," + "identity=" + identity +
                "," + "website=" + website +
                "," + "securityContact=" + securityContact +
                "," + "details=" + details +
        "}";
    }

}
