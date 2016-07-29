// Auto Generated.  DO NOT EDIT!
package com.fengqu.m.app.client.api.resp;
    
import java.util.ArrayList;
import java.util.List;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

public class Api_KeyValueList {

    /**
     * 键值对列表
     */
    public List<Api_KeyValuePair> keyValue;
    /**
     * 反序列化函数，用于从json字符串反序列化本类型实例
     */
    public static Api_KeyValueList deserialize(String json) {
        if (json != null && !json.isEmpty()) {
            return deserialize(new JsonParser().parse(json).getAsJsonObject());
        }
        return null;
    }
    
    /**
     * 反序列化函数，用于从json节点对象反序列化本类型实例
     */
    public static Api_KeyValueList deserialize(JsonObject json) {
        if (json != null && !json.isJsonNull()) {
            Api_KeyValueList result = new Api_KeyValueList();
            JsonElement element = null;
            
            /* 键值对列表 */
            element = json.get("keyValue");
            JsonArray keyValueArray = element.getAsJsonArray();
            if (element != null) {
                int len = keyValueArray.size();
                result.keyValue = new ArrayList<Api_KeyValuePair>(len);
                for (int i = 0; i < len; i++) {
                    JsonObject jo = keyValueArray.get(i).getAsJsonObject();
                    if (jo != null && !jo.isJsonNull()) {
                        result.keyValue.add(Api_KeyValuePair.deserialize(jo));
                    }
                }
            }
      
            return result;
        }
        return null;
    }
    
    /**
     * 序列化函数，用于从对象生成数据字典
     */
    public JsonObject serialize() {
        JsonObject json = new JsonObject();
        
        /* 键值对列表 */
        if (this.keyValue != null) {
            JsonArray keyValueArray = new JsonArray();
            for (Api_KeyValuePair value : this.keyValue) {
                if (value != null) {
                    keyValueArray.add(value.serialize());
                }
            }
            json.add("keyValue", keyValueArray);
        }
      
        return json;
    }
}
  