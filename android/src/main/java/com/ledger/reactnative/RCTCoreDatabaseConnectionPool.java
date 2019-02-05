// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from database.djinni

package com.ledger.reactnative;

import co.ledger.core.DatabaseConnection;
import co.ledger.core.DatabaseConnectionPool;
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

/** A pool of connections to a single database. */
public class RCTCoreDatabaseConnectionPool extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;
    private Map<String, DatabaseConnectionPoolImpl> javaObjects;
    public Map<String, DatabaseConnectionPoolImpl> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCoreDatabaseConnectionPool(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, DatabaseConnectionPoolImpl>();
        WritableNativeMap.setUseNativeAccessor(true);
    }

    @Override
    public String getName()
    {
        return "RCTCoreDatabaseConnectionPool";
    }
    @ReactMethod
    public void newInstance(Promise promise)
    {
        DatabaseConnectionPoolImpl newInstance = new DatabaseConnectionPoolImpl(this.reactContext);
        String uuid = UUID.randomUUID().toString();
        this.javaObjects.put(uuid, newInstance);
        WritableNativeMap finalResult = new WritableNativeMap();
        finalResult.putString("type","RCTCoreDatabaseConnectionPool");
        finalResult.putString("uid",uuid);
        promise.resolve(finalResult);
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
            promise.reject("Failed to release instance of RCTCoreDatabaseConnectionPool", "First parameter of RCTCoreDatabaseConnectionPool::release should be an instance of RCTCoreDatabaseConnectionPool");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, DatabaseConnectionPoolImpl> elem : this.javaObjects.entrySet())
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

    /**
     * Get a connection to the database. This method won't be called more than the engine pool size return
     * by DatabaseEngine::getPoolSize.
     * @return A connection to the database
     */
    @ReactMethod
    public void getConnection(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            DatabaseConnectionPoolImpl currentInstanceObj = this.javaObjects.get(sUid);

            DatabaseConnection javaResult = currentInstanceObj.getConnection();

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreDatabaseConnection rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreDatabaseConnection.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, (DatabaseConnectionImpl)javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreDatabaseConnection");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
}
