// Auto Generated.  DO NOT EDIT!
package net.pocrd.m.app.client.api.resp;

import java.util.ArrayList;
import java.util.List;

import com.google.gson.*;

public class Api_StringArrayResp {

    /**
     * 字符串数组返回值
     */
    public List<String> value;
    /**
     * 反序列化函数，用于从json字符串反序列化本类型实例
     */
    public static Api_StringArrayResp deserialize(String json) {
        if (json != null && !json.isEmpty()) {
            return deserialize(new JsonParser().parse(json).getAsJsonObject());
        }
        return null;
    }
    
    /**
     * 反序列化函数，用于从json节点对象反序列化本类型实例
     */
    public static Api_StringArrayResp deserialize(JsonObject json) {
        if (json != null && !json.isJsonNull()) {
            Api_StringArrayResp result = new Api_StringArrayResp();
            JsonElement element = null;
            
            /* 字符串数组返回值 */
            element = json.get("value");
            if (element != null) {
                JsonArray valueArray = element.getAsJsonArray();
                int len = valueArray.size();
                result.value = new ArrayList<String>(len);
                for (int i = 0; i < len; i++) {
                    if (valueArray.get(i) != null) {
                        result.value.add(valueArray.get(i).getAsString());
                    } else {
                        result.value.add(i, null);
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
        
        /* 字符串数组返回值 */
        if (this.value != null) {
            JsonArray valueArray = new JsonArray();
            for (String value : this.value) {
                valueArray.add(new JsonPrimitive(value));
            }
            json.add("value", valueArray);
        }
      
        return json;
    }
}
  