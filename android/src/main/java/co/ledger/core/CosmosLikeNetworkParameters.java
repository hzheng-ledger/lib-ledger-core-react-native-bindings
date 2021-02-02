// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from addresses.djinni

package co.ledger.core;

import java.util.ArrayList;

public final class CosmosLikeNetworkParameters {


    /*package*/ final String Identifier;

    /*package*/ final String MessagePrefix;

    /*package*/ final byte[] XPUBVersion;

    /*package*/ final byte[] PubKeyPrefix;

    /*package*/ final byte[] Ed25519PubKeyPrefix;

    /*package*/ final byte[] AddressPrefix;

    /*package*/ final String ChainId;

    /*package*/ final ArrayList<String> AdditionalCIPs;

    public CosmosLikeNetworkParameters(
            String Identifier,
            String MessagePrefix,
            byte[] XPUBVersion,
            byte[] PubKeyPrefix,
            byte[] Ed25519PubKeyPrefix,
            byte[] AddressPrefix,
            String ChainId,
            ArrayList<String> AdditionalCIPs) {
        this.Identifier = Identifier;
        this.MessagePrefix = MessagePrefix;
        this.XPUBVersion = XPUBVersion;
        this.PubKeyPrefix = PubKeyPrefix;
        this.Ed25519PubKeyPrefix = Ed25519PubKeyPrefix;
        this.AddressPrefix = AddressPrefix;
        this.ChainId = ChainId;
        this.AdditionalCIPs = AdditionalCIPs;
    }

    /** Name of the network. */
    public String getIdentifier() {
        return Identifier;
    }

    /** Constant prefix to prepend all signature messages. */
    public String getMessagePrefix() {
        return MessagePrefix;
    }

    /** Version of the Extended Public Key standard. */
    public byte[] getXPUBVersion() {
        return XPUBVersion;
    }

    /** Prefix useful for bech32 encoding of secp256k1 raw pubKey */
    public byte[] getPubKeyPrefix() {
        return PubKeyPrefix;
    }

    /** Prefix useful for bech32 encoding of ed25519 raw pubKey */
    public byte[] getEd25519PubKeyPrefix() {
        return Ed25519PubKeyPrefix;
    }

    /** Prefix useful during originated address construction from pubKey hash */
    public byte[] getAddressPrefix() {
        return AddressPrefix;
    }

    /** Chain ID of the network */
    public String getChainId() {
        return ChainId;
    }

    /** Addition CIPs enabled for this network. */
    public ArrayList<String> getAdditionalCIPs() {
        return AdditionalCIPs;
    }

    @Override
    public String toString() {
        return "CosmosLikeNetworkParameters{" +
                "Identifier=" + Identifier +
                "," + "MessagePrefix=" + MessagePrefix +
                "," + "XPUBVersion=" + XPUBVersion +
                "," + "PubKeyPrefix=" + PubKeyPrefix +
                "," + "Ed25519PubKeyPrefix=" + Ed25519PubKeyPrefix +
                "," + "AddressPrefix=" + AddressPrefix +
                "," + "ChainId=" + ChainId +
                "," + "AdditionalCIPs=" + AdditionalCIPs +
        "}";
    }

}
