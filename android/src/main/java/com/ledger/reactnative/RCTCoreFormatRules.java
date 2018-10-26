// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from amount.djinni

package com.ledger.reactnative;

import co.ledger.core.FormatRules;
import co.ledger.core.RoundingMode;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableNativeArray;
import com.facebook.react.bridge.WritableNativeMap;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

/**TODO */
public class RCTCoreFormatRules extends ReactContextBaseJavaModule {
    private final ReactApplicationContext reactContext;
    private Map<String, FormatRules> javaObjects;
    public Map<String, FormatRules> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCoreFormatRules(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, FormatRules>();
    }

    @Override
    public String getName()
    {
        return "RCTCoreFormatRules";
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
            promise.reject("Failed to release instance of RCTCoreFormatRules", "First parameter of RCTCoreFormatRules::release should be an instance of RCTCoreFormatRules");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, FormatRules> elem : this.javaObjects.entrySet())
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
    public void init(int roundingMode, int maxNumberOfDecimals, Promise promise) {
        if (roundingMode < 0 || RoundingMode.values().length <= roundingMode)
        {
            promise.reject("Enum error", "Failed to get enum RoundingMode");
            return;
        }
        RoundingMode javaParam_0 = RoundingMode.values()[roundingMode];
        FormatRules javaResult = new FormatRules(javaParam_0, maxNumberOfDecimals);

        String uuid = UUID.randomUUID().toString();
        this.javaObjects.put(uuid, javaResult);
        WritableNativeMap finalResult = new WritableNativeMap();
        finalResult.putString("type","RCTCoreFormatRules");
        finalResult.putString("uid",uuid);
        promise.resolve(finalResult);
    }
    @ReactMethod
    public void getRoundingMode(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            FormatRules javaObj = this.javaObjects.get(uid);
            RoundingMode result = javaObj.getRoundingMode();
            promise.resolve(result);
        }
        else
        {
            promise.reject("Failed to call RCTCoreFormatRules::getRoundingMode", "First parameter of RCTCoreFormatRules::getRoundingMode should be an instance of RCTCoreFormatRules");
        }
    }

    @ReactMethod
    public void getMaxNumberOfDecimals(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            FormatRules javaObj = this.javaObjects.get(uid);
            int result = javaObj.getMaxNumberOfDecimals();
            promise.resolve(result);
        }
        else
        {
            promise.reject("Failed to call RCTCoreFormatRules::getMaxNumberOfDecimals", "First parameter of RCTCoreFormatRules::getMaxNumberOfDecimals should be an instance of RCTCoreFormatRules");
        }
    }

}
