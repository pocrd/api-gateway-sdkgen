// Auto Generated.  DO NOT EDIT!
package net.pocrd.m.app.client.api.resp;

import com.google.gson.*;
import net.pocrd.m.app.client.util.JsonSerializable;

public class Api_BoolResp implements JsonSerializable {

    /**
     * 布尔类型返回值
     */
    public boolean value;
      

    /**
     * 反序列化函数，用于从json字符串反序列化本类型实例
     */
    public static Api_BoolResp deserialize(String json) {
        if (json != null && json.length() != 0) {
            return deserialize(new JsonParser().parse(json).getAsJsonObject());
        }
        return null;
    }

    /**
     * 反序列化函数，用于从json节点对象反序列化本类型实例
     */
    public static Api_BoolResp deserialize(JsonObject json) {
        if (json != null && !json.isJsonNull()) {
            Api_BoolResp result = new Api_BoolResp();
            JsonElement element = null;
            
            /* 布尔类型返回值 */
            element = json.get("value");
            if (element != null && !element.isJsonNull()) {
                result.value = element.getAsBoolean();
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
        
        /* 布尔类型返回值 */
        json.addProperty("value", this.value);
          
        return json;
    }
}
  