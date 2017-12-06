// Auto Generated.  DO NOT EDIT!
using System;

using Newtonsoft.Json.Linq;

using PoCRD.Client.Util;

namespace PoCRD.Client.API.Response
{
    public class Api_APITEST_BadResponse : JsonSerializable
    {
        
        /**
         * str
         */
        public string str;
      

        /**
         * 反序列化函数，用于从json字符串反序列化本类型实例
         */
        public static Api_APITEST_BadResponse Deserialize(string json) 
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
        public static Api_APITEST_BadResponse Deserialize(JObject json) 
        {
            if (json != null) 
            {
                Api_APITEST_BadResponse result = new Api_APITEST_BadResponse();
                JToken element = null;
                
                /* str */
                element = json["str"];
                if (element != null)
                {
                    result.str = (string)element;
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
            
            /* str */
            if (this.str != null) { json["str"] = this.str; }
          
            return json;
        }
    }
}
  