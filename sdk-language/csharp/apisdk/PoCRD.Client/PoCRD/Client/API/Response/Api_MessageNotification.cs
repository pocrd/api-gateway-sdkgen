// Auto Generated.  DO NOT EDIT!
using System;

using Newtonsoft.Json.Linq;

using PoCRD.Client.Util;

namespace PoCRD.Client.API.Response
{
    public class Api_MessageNotification : JsonSerializable
    {
        
        /**
         * 消息内容
         */
        public string content;
      
        /**
         * 消息Id
         */
        public string msgId;
      
        /**
         * 消息类型0: 系统消息,1:通知消息,2: 聊天消息,3:群消息,4:留言消息,5:普通聊天 控制消息
         */
        public int type;
      
        /**
         * 消息内容类型
         */
        public int subType;
      
        /**
         * 发送方Id
         */
        public long fromUserId;
      
        /**
         * 接收方Id
         */
        public long toUserId;
      

        /**
         * 反序列化函数，用于从json字符串反序列化本类型实例
         */
        public static Api_MessageNotification Deserialize(string json) 
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
        public static Api_MessageNotification Deserialize(JObject json) 
        {
            if (json != null) 
            {
                Api_MessageNotification result = new Api_MessageNotification();
                JToken element = null;
                
                /* 消息内容 */
                element = json["content"];
                if (element != null)
                {
                    result.content = (string)element;
                }
            
                /* 消息Id */
                element = json["msgId"];
                if (element != null)
                {
                    result.msgId = (string)element;
                }
            
                /* 消息类型0: 系统消息,1:通知消息,2: 聊天消息,3:群消息,4:留言消息,5:普通聊天 控制消息 */
                element = json["type"];
                if (element != null)
                {
                    result.type = (int)element;
                }
            
                /* 消息内容类型 */
                element = json["subType"];
                if (element != null)
                {
                    result.subType = (int)element;
                }
            
                /* 发送方Id */
                element = json["fromUserId"];
                if (element != null)
                {
                    result.fromUserId = (long)element;
                }
            
                /* 接收方Id */
                element = json["toUserId"];
                if (element != null)
                {
                    result.toUserId = (long)element;
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
            
            /* 消息内容 */
            if (this.content != null) { json["content"] = this.content; }
          
            /* 消息Id */
            if (this.msgId != null) { json["msgId"] = this.msgId; }
          
            /* 消息类型0: 系统消息,1:通知消息,2: 聊天消息,3:群消息,4:留言消息,5:普通聊天 控制消息 */
            json["type"] = this.type;
          
            /* 消息内容类型 */
            json["subType"] = this.subType;
          
            /* 发送方Id */
            json["fromUserId"] = this.fromUserId;
          
            /* 接收方Id */
            json["toUserId"] = this.toUserId;
          
            return json;
        }
    }
}
  