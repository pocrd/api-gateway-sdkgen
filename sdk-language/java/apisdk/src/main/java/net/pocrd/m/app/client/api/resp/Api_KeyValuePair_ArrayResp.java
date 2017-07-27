// Auto Generated.  DO NOT EDIT!
package net.pocrd.m.app.client.api.resp;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import net.pocrd.m.app.client.util.JsonSerializable;

import java.util.ArrayList;
import java.util.List;

public class Api_KeyValuePair_ArrayResp implements JsonSerializable {

    /**
     * 键值对
     */
    public List<Api_KeyValuePair> value;

    /**
     * 反序列化函数，用于从json字符串反序列化本类型实例
     */
    public static Api_KeyValuePair_ArrayResp deserialize(String json) {
        if (json != null && !json.isEmpty()) {
            return deserialize(new JsonParser().parse(json).getAsJsonObject());
        }
        return null;
    }

    /**
     * 反序列化函数，用于从json节点对象反序列化本类型实例
     */
    public static Api_KeyValuePair_ArrayResp deserialize(JsonObject json) {
        if (json != null && !json.isJsonNull()) {
            Api_KeyValuePair_ArrayResp result = new Api_KeyValuePair_ArrayResp();
            JsonElement element = null;
            
            /* 键值对 */
            element = json.get("value");
            if (element != null) {
                JsonArray valueArray = element.getAsJsonArray();
                int len = valueArray.size();
                result.value = new ArrayList<Api_KeyValuePair>(len);
                for (int i = 0; i < len; i++) {
                    JsonObject jo = valueArray.get(i).getAsJsonObject();
                    if (jo != null && !jo.isJsonNull()) {
                        result.value.add(Api_KeyValuePair.deserialize(jo));
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
        
        /* 键值对 */
        if (this.value != null) {
            JsonArray valueArray = new JsonArray();
            for (Api_KeyValuePair value : this.value) {
                if (value != null) {
                    valueArray.add(value.serialize());
                }
            }
            json.add("value", valueArray);
        }

        return json;
    }
}
  