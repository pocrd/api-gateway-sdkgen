// Auto Generated.  DO NOT EDIT!
using System;

using Newtonsoft.Json.Linq;

using PoCRD.Client.Util;

namespace PoCRD.Client.API.Response
{
    public class Api_NumberResp : JsonSerializable
    {
        
        /**
         * 数值型返回值，包含byte, char, short, int
         */
        public int value;
      

        /**
         * 反序列化函数，用于从json字符串反序列化本类型实例
         */
        public static Api_NumberResp Deserialize(string json) 
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
        public static Api_NumberResp Deserialize(JObject json) 
        {
            if (json != null) 
            {
                Api_NumberResp result = new Api_NumberResp();
                JToken element = null;
                
                /* 数值型返回值，包含byte, char, short, int */
                element = json["value"];
                if (element != null)
                {
                    result.value = (int)element;
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
            
            /* 数值型返回值，包含byte, char, short, int */
            json["value"] = this.value;
          
            return json;
        }
    }
}
  