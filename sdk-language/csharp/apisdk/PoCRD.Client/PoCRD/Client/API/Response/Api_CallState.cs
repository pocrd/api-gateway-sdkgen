// Auto Generated.  DO NOT EDIT!
using System;

using Newtonsoft.Json.Linq;

using PoCRD.Client.Util;

namespace PoCRD.Client.API.Response
{
    public class Api_CallState : JsonSerializable
    {
        
        /**
         * 返回值
         */
        public int code;
      
        /**
         * 数据长度
         */
        public int length;
      
        /**
         * 返回信息
         */
        public string msg;
      

        /**
         * 反序列化函数，用于从json字符串反序列化本类型实例
         */
        public static Api_CallState Deserialize(string json) 
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
        public static Api_CallState Deserialize(JObject json) 
        {
            if (json != null) 
            {
                Api_CallState result = new Api_CallState();
                JToken element = null;
                
                /* 返回值 */
                element = json["code"];
                if (element != null)
                {
                    result.code = (int)element;
                }
            
                /* 数据长度 */
                element = json["length"];
                if (element != null)
                {
                    result.length = (int)element;
                }
            
                /* 返回信息 */
                element = json["msg"];
                if (element != null)
                {
                    result.msg = (string)element;
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
            
            /* 返回值 */
            json["code"] = this.code;
          
            /* 数据长度 */
            json["length"] = this.length;
          
            /* 返回信息 */
            if (this.msg != null) { json["msg"] = this.msg; }
          
            return json;
        }
    }
}
  