// Auto Generated.  DO NOT EDIT!
using System;

using System.Collections.Generic;

using Newtonsoft.Json.Linq;

using PoCRD.Client.Util;

namespace PoCRD.Client.API.Response
{
    public class Api_APITEST_ComplexTestEntity_ArrayResp : JsonSerializable
    {
        
        /**
         * ComplexTestEntity
         */
        public List<Api_APITEST_ComplexTestEntity> value;
            

        /**
         * 反序列化函数，用于从json字符串反序列化本类型实例
         */
        public static Api_APITEST_ComplexTestEntity_ArrayResp Deserialize(string json) 
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
        public static Api_APITEST_ComplexTestEntity_ArrayResp Deserialize(JObject json) 
        {
            if (json != null) 
            {
                Api_APITEST_ComplexTestEntity_ArrayResp result = new Api_APITEST_ComplexTestEntity_ArrayResp();
                JToken element = null;
                
                /* ComplexTestEntity */
                element = json["value"];
                if (element != null)
                {
                    var valueArray = (JArray)element;
                    int len = valueArray.Count;
                    result.value = new List<Api_APITEST_ComplexTestEntity>();
                    for (int i = 0; i < len; i++)
                    {
                        result.value.Add(Api_APITEST_ComplexTestEntity.Deserialize((JObject)valueArray[i]));
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
            
            /* ComplexTestEntity */
            if (this.value != null) 
            {
                var valueArray = new JArray();
                foreach (var entry in this.value)
                {
                    if (entry != null)
                    {
                        valueArray.Add(entry.Serialize());
                    }
                }
                json["value"] = valueArray;
            }
      
            return json;
        }
    }
}
  