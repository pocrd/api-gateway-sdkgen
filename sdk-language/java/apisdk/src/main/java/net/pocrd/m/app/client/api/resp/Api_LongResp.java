// Auto Generated.  DO NOT EDIT!
package net.pocrd.m.app.client.api.resp;

import com.google.gson.*;

public class Api_LongResp {

    /**
     * 长整形返回值
     */
    public long value;
      
    /**
     * 反序列化函数，用于从json字符串反序列化本类型实例
     */
    public static Api_LongResp deserialize(String json) {
        if (json != null && !json.isEmpty()) {
            return deserialize(new JsonParser().parse(json).getAsJsonObject());
        }
        return null;
    }
    
    /**
     * 反序列化函数，用于从json节点对象反序列化本类型实例
     */
    public static Api_LongResp deserialize(JsonObject json) {
        if (json != null && !json.isJsonNull()) {
            Api_LongResp result = new Api_LongResp();
            JsonElement element = null;
            
            /* 长整形返回值 */
            element = json.get("value");
            if (element != null && !element.isJsonNull()) {
                result.value = element.getAsLong();
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
        
        /* 长整形返回值 */
        json.addProperty("value", this.value);
          
        return json;
    }
}
  