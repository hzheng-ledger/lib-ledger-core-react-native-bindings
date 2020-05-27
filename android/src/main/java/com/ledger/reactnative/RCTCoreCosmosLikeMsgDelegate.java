// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

package com.ledger.reactnative;

import co.ledger.core.CosmosLikeAmount;
import co.ledger.core.CosmosLikeMsgDelegate;
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

@ReactModule(name = "RCTCoreCosmosLikeMsgDelegate")
public class RCTCoreCosmosLikeMsgDelegate extends ReactContextBaseJavaModule {
    private final ReactApplicationContext reactContext;
    private Map<String, CosmosLikeMsgDelegate> javaObjects;
    private Map<String, Object> implementationsData;
    public Map<String, CosmosLikeMsgDelegate> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCoreCosmosLikeMsgDelegate(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, CosmosLikeMsgDelegate>();
        this.implementationsData = new HashMap<>();
    }

    @Override
    public String getName()
    {
        return "RCTCoreCosmosLikeMsgDelegate";
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
            promise.reject("Failed to release instance of RCTCoreCosmosLikeMsgDelegate", "First parameter of RCTCoreCosmosLikeMsgDelegate::release should be an instance of RCTCoreCosmosLikeMsgDelegate");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, CosmosLikeMsgDelegate> elem : this.javaObjects.entrySet())
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
    public void init(String delegatorAddress, String validatorAddress, ReadableMap amount, Promise promise) {
        WritableNativeMap implementationsData = new WritableNativeMap();
        RCTCoreCosmosLikeAmount rctParam_amount = this.reactContext.getNativeModule(RCTCoreCosmosLikeAmount.class);
        CosmosLikeAmount javaParam_2 = rctParam_amount.getJavaObjects().get(amount.getString("uid"));
        implementationsData.putString("amount", amount.getString("uid"));
        CosmosLikeMsgDelegate javaResult = new CosmosLikeMsgDelegate(delegatorAddress, validatorAddress, javaParam_2);

        String uuid = UUID.randomUUID().toString();
        this.javaObjects.put(uuid, javaResult);
        WritableNativeMap finalResult = new WritableNativeMap();
        finalResult.putString("type","RCTCoreCosmosLikeMsgDelegate");
        finalResult.putString("uid",uuid);
        this.implementationsData.put(uuid, implementationsData);
        promise.resolve(finalResult);
    }
    public void mapImplementationsData(ReadableMap currentInstance)
    {
        String currentInstanceUid = currentInstance.getString("uid");
        CosmosLikeMsgDelegate javaImpl = this.javaObjects.get(currentInstanceUid);
        WritableNativeMap implementationsData = new WritableNativeMap();
        CosmosLikeAmount field_2 = javaImpl.getAmount();
        String field_2_uuid = UUID.randomUUID().toString();
        RCTCoreCosmosLikeAmount rctImpl_field_2 = this.reactContext.getNativeModule(RCTCoreCosmosLikeAmount.class);
        rctImpl_field_2.getJavaObjects().put(field_2_uuid, field_2);
        WritableNativeMap converted_field_2 = new WritableNativeMap();
        converted_field_2.putString("type","RCTCoreCosmosLikeAmount");
        converted_field_2.putString("uid",field_2_uuid);
        implementationsData.putMap("amount", converted_field_2);
        this.implementationsData.put(currentInstanceUid, implementationsData);
    }
    @ReactMethod
    public void getDelegatorAddress(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            CosmosLikeMsgDelegate javaObj = this.javaObjects.get(uid);
            String result = javaObj.getDelegatorAddress();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreCosmosLikeMsgDelegate::getDelegatorAddress", "First parameter of RCTCoreCosmosLikeMsgDelegate::getDelegatorAddress should be an instance of RCTCoreCosmosLikeMsgDelegate");
        }
    }

    @ReactMethod
    public void getValidatorAddress(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            CosmosLikeMsgDelegate javaObj = this.javaObjects.get(uid);
            String result = javaObj.getValidatorAddress();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreCosmosLikeMsgDelegate::getValidatorAddress", "First parameter of RCTCoreCosmosLikeMsgDelegate::getValidatorAddress should be an instance of RCTCoreCosmosLikeMsgDelegate");
        }
    }

    @ReactMethod
    public void getAmount(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            if (!this.implementationsData.containsKey(uid))
            {
                this.mapImplementationsData(currentInstance);
            }
            ReadableNativeMap data = (ReadableNativeMap)this.implementationsData.get(uid);
            WritableNativeMap result = new WritableNativeMap();
            result.merge(data.getMap("amount"));
            promise.resolve(result);
        }
        else
        {
            promise.reject("Failed to call RCTCoreCosmosLikeMsgDelegate::getAmount", "First parameter of RCTCoreCosmosLikeMsgDelegate::getAmount should be an instance of RCTCoreCosmosLikeMsgDelegate");
        }
    }

}