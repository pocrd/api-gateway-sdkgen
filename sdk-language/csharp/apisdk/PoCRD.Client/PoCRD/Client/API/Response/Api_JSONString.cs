// Auto Generated.  DO NOT EDIT!
using System;

using Newtonsoft.Json.Linq;

using PoCRD.Client.Util;

namespace PoCRD.Client.API.Response
{
    public class Api_JSONString : JsonSerializable
    {
        
        /**
         * json string
         */
        public string value;
      

        /**
         * 反序列化函数，用于从json字符串反序列化本类型实例
         */
        public static Api_JSONString Deserialize(string json) 
        {
            if (json != null && json.Length != 0) 
            {
                return Deserialize(JObject.Parse(json));
            }
            return null;
        }
        
        /**
         * 反序列化函数，用于从json节点对象反序列化本类型实例
         */
        public static Api_JSONString Deserialize(JObject json) 
        {
            if (json != null) 
            {
                Api_JSONString result = new Api_JSONString();
                JToken element = null;
                result.value = json.ToString();
                    
                return result;
            }
            return null;
        }
        
        /**
         * 序列化函数，用于从对象生成数据字典
         */
        public JObject Serialize()
        {
            JObject json = new JObject();
            
            /* json string */
            if (this.value != null) { json["value"] = this.value; }
          
            return json;
        }
    }
}
  