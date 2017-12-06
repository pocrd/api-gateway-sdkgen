// Auto Generated.  DO NOT EDIT!
using System;

using Newtonsoft.Json.Linq;

using PoCRD.Client.Util;

namespace PoCRD.Client.API.Response
{
    public class Api_CreditNotification : JsonSerializable
    {
        
        /**
         * 描述,为何送积分
         */
        public string description;
      
        /**
         * 积分值
         */
        public long credit;
      
        /**
         * 提示,送了多少积分
         */
        public string notification;
      

        /**
         * 反序列化函数，用于从json字符串反序列化本类型实例
         */
        public static Api_CreditNotification Deserialize(string json) 
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
        public static Api_CreditNotification Deserialize(JObject json) 
        {
            if (json != null) 
            {
                Api_CreditNotification result = new Api_CreditNotification();
                JToken element = null;
                
                /* 描述,为何送积分 */
                element = json["description"];
                if (element != null)
                {
                    result.description = (string)element;
                }
            
                /* 积分值 */
                element = json["credit"];
                if (element != null)
                {
                    result.credit = (long)element;
                }
            
                /* 提示,送了多少积分 */
                element = json["notification"];
                if (element != null)
                {
                    result.notification = (string)element;
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
            
            /* 描述,为何送积分 */
            if (this.description != null) { json["description"] = this.description; }
          
            /* 积分值 */
            json["credit"] = this.credit;
          
            /* 提示,送了多少积分 */
            if (this.notification != null) { json["notification"] = this.notification; }
          
            return json;
        }
    }
}
  