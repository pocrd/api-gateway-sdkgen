// Auto Generated.  DO NOT EDIT!
using System;

using Newtonsoft.Json.Linq;

using PoCRD.Client.Util;

namespace PoCRD.Client.API.Response
{
    public class Api_DynamicEntity : JsonSerializable
    {
        
        /**
         * 动态类型实体
         */
        public JsonSerializable entity;
      
        /**
         * 动态类型的类型名
         */
        public string typeName;
      

        /**
         * 反序列化函数，用于从json字符串反序列化本类型实例
         */
        public static Api_DynamicEntity Deserialize(string json) 
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
        public static Api_DynamicEntity Deserialize(JObject json) 
        {
            if (json != null) 
            {
                Api_DynamicEntity result = new Api_DynamicEntity();
                JToken element = null;
                
                /* 动态类型的类型名 */
                element = json["typeName"];
                if (element != null)
                {
                    result.typeName = (string)element;
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
            
            /* 动态类型实体 */
            if (this.entity != null) { json["entity"] = this.entity.Serialize(); }
          
            /* 动态类型的类型名 */
            if (this.typeName != null) { json["typeName"] = this.typeName; }
          
            return json;
        }
    }
}
  