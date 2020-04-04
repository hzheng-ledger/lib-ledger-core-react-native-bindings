// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from stellar_like_wallet.djinni

package com.ledger.reactnative;

import co.ledger.core.StellarLikeAsset;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableNativeArray;
import com.facebook.react.bridge.ReadableNativeMap;
import com.facebook.react.bridge.WritableNativeArray;
import com.facebook.react.bridge.WritableNativeMap;
import com.facebook.react.module.annotations.ReactModule;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Optional;
import java.util.TimeZone;
import java.util.UUID;

@ReactModule(name = "RCTCoreStellarLikeAsset")
public class RCTCoreStellarLikeAsset extends ReactContextBaseJavaModule {
    private final ReactApplicationContext reactContext;
    private Map<String, StellarLikeAsset> javaObjects;
    public Map<String, StellarLikeAsset> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCoreStellarLikeAsset(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, StellarLikeAsset>();
    }

    @Override
    public String getName()
    {
        return "RCTCoreStellarLikeAsset";
    }
    @ReactMethod
    public void release(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            this.javaObjects.remove(uid);
            promise.resolve(0);
        }
        else
        {
            promise.reject("Failed to release instance of RCTCoreStellarLikeAsset", "First parameter of RCTCoreStellarLikeAsset::release should be an instance of RCTCoreStellarLikeAsset");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, StellarLikeAsset> elem : this.javaObjects.entrySet())
        {
            result.pushString(elem.getKey());
        }
        promise.resolve(result);
    }
    @ReactMethod
    public void flush(Promise promise)
    {
        this.javaObjects.clear();
        promise.resolve(0);
    }
    @ReactMethod
    public void isNull(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            if (this.javaObjects.get(uid) == null)
            {
                promise.resolve(true);
                return;
            }
            else
            {
                promise.resolve(false);
                return;
            }
        }
        promise.resolve(true);
    }

    @ReactMethod
    public void init(String type, String code, String issuer, Promise promise) {
        StellarLikeAsset javaResult = new StellarLikeAsset(type, code, issuer);

        String uuid = UUID.randomUUID().toString();
        this.javaObjects.put(uuid, javaResult);
        WritableNativeMap finalResult = new WritableNativeMap();
        finalResult.putString("type","RCTCoreStellarLikeAsset");
        finalResult.putString("uid",uuid);
        promise.resolve(finalResult);
    }
    @ReactMethod
    public void getType(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            StellarLikeAsset javaObj = this.javaObjects.get(uid);
            String result = javaObj.getType();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreStellarLikeAsset::getType", "First parameter of RCTCoreStellarLikeAsset::getType should be an instance of RCTCoreStellarLikeAsset");
        }
    }

    @ReactMethod
    public void getCode(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            StellarLikeAsset javaObj = this.javaObjects.get(uid);
            String result = javaObj.getCode();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreStellarLikeAsset::getCode", "First parameter of RCTCoreStellarLikeAsset::getCode should be an instance of RCTCoreStellarLikeAsset");
        }
    }

    @ReactMethod
    public void getIssuer(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            StellarLikeAsset javaObj = this.javaObjects.get(uid);
            String result = javaObj.getIssuer();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreStellarLikeAsset::getIssuer", "First parameter of RCTCoreStellarLikeAsset::getIssuer should be an instance of RCTCoreStellarLikeAsset");
        }
    }

}