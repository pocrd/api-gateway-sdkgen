// Auto Generated.  DO NOT EDIT!
using System;

using Newtonsoft.Json.Linq;

using PoCRD.Client.Util;

namespace PoCRD.Client.API.Response
{
    public class Api_StringResp : JsonSerializable
    {
        
        /**
         * 字符串返回值
         */
        public string value;
      

        /**
         * 反序列化函数，用于从json字符串反序列化本类型实例
         */
        public static Api_StringResp Deserialize(string json) 
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
        public static Api_StringResp Deserialize(JObject json) 
        {
            if (json != null) 
            {
                Api_StringResp result = new Api_StringResp();
                JToken element = null;
                
                /* 字符串返回值 */
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
            
            /* 字符串返回值 */
            if (this.value != null) { json["value"] = this.value; }
          
            return json;
        }
    }
}
  