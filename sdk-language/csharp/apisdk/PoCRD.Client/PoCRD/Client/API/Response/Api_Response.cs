// Auto Generated.  DO NOT EDIT!
using System;

using System.Collections.Generic;

using Newtonsoft.Json.Linq;

using PoCRD.Client.Util;

namespace PoCRD.Client.API.Response
{
    public class Api_Response : JsonSerializable
    {
        
        /**
         * 当前服务端时间
         */
        public long systime;
      
        /**
         * 调用返回值
         */
        public int code;
      
        /**
         * 调用标识符
         */
        public string cid;
      
        /**
         * API调用状态，code的信息请参考ApiCode定义文件
         */
        public List<Api_CallState> stateList;
            
        /**
         * 服务端返回的通知事件集合
         */
        public List<Api_KeyValuePair> notificationList;
            

        /**
         * 反序列化函数，用于从json字符串反序列化本类型实例
         */
        public static Api_Response Deserialize(string json) 
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
        public static Api_Response Deserialize(JObject json) 
        {
            if (json != null) 
            {
                Api_Response result = new Api_Response();
                JToken element = null;
                
                /* 当前服务端时间 */
                element = json["systime"];
                if (element != null)
                {
                    result.systime = (long)element;
                }
            
                /* 调用返回值 */
                element = json["code"];
                if (element != null)
                {
                    result.code = (int)element;
                }
            
                /* 调用标识符 */
                element = json["cid"];
                if (element != null)
                {
                    result.cid = (string)element;
                }
            
                /* API调用状态，code的信息请参考ApiCode定义文件 */
                element = json["stateList"];
                if (element != null)
                {
                    var stateListArray = (JArray)element;
                    int len = stateListArray.Count;
                    result.stateList = new List<Api_CallState>();
                    for (int i = 0; i < len; i++)
                    {
                        result.stateList.Add(Api_CallState.Deserialize((JObject)stateListArray[i]));
                    }
                }
      
                /* 服务端返回的通知事件集合 */
                element = json["notificationList"];
                if (element != null)
                {
                    var notificationListArray = (JArray)element;
                    int len = notificationListArray.Count;
                    result.notificationList = new List<Api_KeyValuePair>();
                    for (int i = 0; i < len; i++)
                    {
                        result.notificationList.Add(Api_KeyValuePair.Deserialize((JObject)notificationListArray[i]));
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
            
            /* 当前服务端时间 */
            json["systime"] = this.systime;
          
            /* 调用返回值 */
            json["code"] = this.code;
          
            /* 调用标识符 */
            if (this.cid != null) { json["cid"] = this.cid; }
          
            /* API调用状态，code的信息请参考ApiCode定义文件 */
            if (this.stateList != null) 
            {
                var stateListArray = new JArray();
                foreach (var entry in this.stateList)
                {
                    if (entry != null)
                    {
                        stateListArray.Add(entry.Serialize());
                    }
                }
                json["stateList"] = stateListArray;
            }
      
            /* 服务端返回的通知事件集合 */
            if (this.notificationList != null) 
            {
                var notificationListArray = new JArray();
                foreach (var entry in this.notificationList)
                {
                    if (entry != null)
                    {
                        notificationListArray.Add(entry.Serialize());
                    }
                }
                json["notificationList"] = notificationListArray;
            }
      
            return json;
        }
    }
}
  