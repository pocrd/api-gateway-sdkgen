// Auto Generated.  DO NOT EDIT!
using System;

using System.Collections.Generic;

using Newtonsoft.Json.Linq;

using PoCRD.Client.Util;

namespace PoCRD.Client.API.Response
{
    public class Api_APITEST_SimpleTestEntity : JsonSerializable
    {
        
        /**
         * string value
         */
        public string strValue;
      
        /**
         * int array
         */
        public int[] intArray;

        /**
         * 反序列化函数，用于从json字符串反序列化本类型实例
         */
        public static Api_APITEST_SimpleTestEntity Deserialize(string json) 
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
        public static Api_APITEST_SimpleTestEntity Deserialize(JObject json) 
        {
            if (json != null) 
            {
                Api_APITEST_SimpleTestEntity result = new Api_APITEST_SimpleTestEntity();
                JToken element = null;
                
                /* string value */
                element = json["strValue"];
                if (element != null)
                {
                    result.strValue = (string)element;
                }
            
                /* int array */
                element = json["intArray"];
                if (element != null)
                {
                    var intArrayArray = (JArray)element;
                    int len = intArrayArray.Count;
                    result.intArray = new int[len];
                    for (int i = 0; i < len; i++)
                    {
                        result.intArray[i] = (int)intArrayArray[i];
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
            
            /* string value */
            if (this.strValue != null) { json["strValue"] = this.strValue; }
          
            /* int array */
            if (this.intArray != null) 
            {
                var intArrayArray = new JArray();
                foreach (var entry in this.intArray)
                {
                    intArrayArray.Add(entry);
                }
                json["intArray"] = intArrayArray;
            }
      
            return json;
        }
    }
}
  