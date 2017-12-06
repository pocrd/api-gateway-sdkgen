// Auto Generated.  DO NOT EDIT!
using System;

using Newtonsoft.Json.Linq;

using PoCRD.Client.Util;

namespace PoCRD.Client.API.Response
{
    public class Api_BoolResp : JsonSerializable
    {
        
        /**
         * 布尔类型返回值
         */
        public bool value;
      

        /**
         * 反序列化函数，用于从json字符串反序列化本类型实例
         */
        public static Api_BoolResp Deserialize(string json) 
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
        public static Api_BoolResp Deserialize(JObject json) 
        {
            if (json != null) 
            {
                Api_BoolResp result = new Api_BoolResp();
                JToken element = null;
                
                /* 布尔类型返回值 */
                element = json["value"];
                if (element != null)
                {
                    result.value = (bool)element;
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
            
            /* 布尔类型返回值 */
            json["value"] = this.value;
          
            return json;
        }
    }
}
  