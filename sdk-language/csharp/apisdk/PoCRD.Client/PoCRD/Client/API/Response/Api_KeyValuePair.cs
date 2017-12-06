// Auto Generated.  DO NOT EDIT!
using System;

using Newtonsoft.Json.Linq;

using PoCRD.Client.Util;

namespace PoCRD.Client.API.Response
{
    public class Api_KeyValuePair : JsonSerializable
    {
        
        /**
         * 键
         */
        public string key;
      
        /**
         * 值
         */
        public string value;
      

        /**
         * 反序列化函数，用于从json字符串反序列化本类型实例
         */
        public static Api_KeyValuePair Deserialize(string json) 
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
        public static Api_KeyValuePair Deserialize(JObject json) 
        {
            if (json != null) 
            {
                Api_KeyValuePair result = new Api_KeyValuePair();
                JToken element = null;
                
                /* 键 */
                element = json["key"];
                if (element != null)
                {
                    result.key = (string)element;
                }
            
                /* 值 */
                element = json["value"];
                if (element != null)
                {
                    result.value = (string)element;
                }
            
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
            
            /* 键 */
            if (this.key != null) { json["key"] = this.key; }
          
            /* 值 */
            if (this.value != null) { json["value"] = this.value; }
          
            return json;
        }
    }
}
  