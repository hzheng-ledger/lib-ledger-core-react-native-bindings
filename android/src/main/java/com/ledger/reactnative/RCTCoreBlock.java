// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

package com.ledger.reactnative;

import co.ledger.core.Block;
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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

/** Structure of a block in the blockchain. */
public class RCTCoreBlock extends ReactContextBaseJavaModule {
    private final ReactApplicationContext reactContext;
    private Map<String, Block> javaObjects;
    public Map<String, Block> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCoreBlock(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, Block>();
        WritableNativeMap.setUseNativeAccessor(true);
    }

    @Override
    public String getName()
    {
        return "RCTCoreBlock";
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
            promise.reject("Failed to release instance of RCTCoreBlock", "First parameter of RCTCoreBlock::release should be an instance of RCTCoreBlock");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, Block> elem : this.javaObjects.entrySet())
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
    public void init(String blockHash, String uid, Date time, String currencyName, long height, Promise promise) {
        Block javaResult = new Block(blockHash, uid, time, currencyName, height);

        String uuid = UUID.randomUUID().toString();
        this.javaObjects.put(uuid, javaResult);
        WritableNativeMap finalResult = new WritableNativeMap();
        finalResult.putString("type","RCTCoreBlock");
        finalResult.putString("uid",uuid);
        promise.resolve(finalResult);
    }
    @ReactMethod
    public void getBlockHash(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            Block javaObj = this.javaObjects.get(uid);
            String result = javaObj.getBlockHash();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreBlock::getBlockHash", "First parameter of RCTCoreBlock::getBlockHash should be an instance of RCTCoreBlock");
        }
    }

    @ReactMethod
    public void getUid(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            Block javaObj = this.javaObjects.get(uid);
            String result = javaObj.getUid();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreBlock::getUid", "First parameter of RCTCoreBlock::getUid should be an instance of RCTCoreBlock");
        }
    }

    @ReactMethod
    public void getTime(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            Block javaObj = this.javaObjects.get(uid);
            Date result = javaObj.getTime();
            DateFormat resultDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
            String converted_result = resultDateFormat.format(result);
            promise.resolve(converted_result);
        }
        else
        {
            promise.reject("Failed to call RCTCoreBlock::getTime", "First parameter of RCTCoreBlock::getTime should be an instance of RCTCoreBlock");
        }
    }

    @ReactMethod
    public void getCurrencyName(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            Block javaObj = this.javaObjects.get(uid);
            String result = javaObj.getCurrencyName();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreBlock::getCurrencyName", "First parameter of RCTCoreBlock::getCurrencyName should be an instance of RCTCoreBlock");
        }
    }

    @ReactMethod
    public void getHeight(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            Block javaObj = this.javaObjects.get(uid);
            double result = javaObj.getHeight();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putDouble("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreBlock::getHeight", "First parameter of RCTCoreBlock::getHeight should be an instance of RCTCoreBlock");
        }
    }

}
