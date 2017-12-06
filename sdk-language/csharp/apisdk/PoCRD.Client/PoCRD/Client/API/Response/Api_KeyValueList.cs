// Auto Generated.  DO NOT EDIT!
using System;

using System.Collections.Generic;

using Newtonsoft.Json.Linq;

using PoCRD.Client.Util;

namespace PoCRD.Client.API.Response
{
    public class Api_KeyValueList : JsonSerializable
    {
        
        /**
         * 键值对列表
         */
        public List<Api_KeyValuePair> keyValue;
            

        /**
         * 反序列化函数，用于从json字符串反序列化本类型实例
         */
        public static Api_KeyValueList Deserialize(string json) 
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
        public static Api_KeyValueList Deserialize(JObject json) 
        {
            if (json != null) 
            {
                Api_KeyValueList result = new Api_KeyValueList();
                JToken element = null;
                
                /* 键值对列表 */
                element = json["keyValue"];
                if (element != null)
                {
                    var keyValueArray = (JArray)element;
                    int len = keyValueArray.Count;
                    result.keyValue = new List<Api_KeyValuePair>();
                    for (int i = 0; i < len; i++)
                    {
                        result.keyValue.Add(Api_KeyValuePair.Deserialize((JObject)keyValueArray[i]));
                    }
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
            
            /* 键值对列表 */
            if (this.keyValue != null) 
            {
                var keyValueArray = new JArray();
                foreach (var entry in this.keyValue)
                {
                    if (entry != null)
                    {
                        keyValueArray.Add(entry.Serialize());
                    }
                }
                json["keyValue"] = keyValueArray;
            }
      
            return json;
        }
    }
}
  