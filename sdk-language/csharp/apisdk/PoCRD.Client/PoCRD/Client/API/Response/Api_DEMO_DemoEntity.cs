// Auto Generated.  DO NOT EDIT!
using System;

using Newtonsoft.Json.Linq;

using PoCRD.Client.Util;

namespace PoCRD.Client.API.Response
{
    public class Api_DEMO_DemoEntity : JsonSerializable
    {
        
        /**
         * id多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト
         */
        public int id;
      
        /**
         * name多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト
         */
        public string name;
      

        /**
         * 反序列化函数，用于从json字符串反序列化本类型实例
         */
        public static Api_DEMO_DemoEntity Deserialize(string json) 
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
        public static Api_DEMO_DemoEntity Deserialize(JObject json) 
        {
            if (json != null) 
            {
                Api_DEMO_DemoEntity result = new Api_DEMO_DemoEntity();
                JToken element = null;
                
                /* id多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト */
                element = json["id"];
                if (element != null)
                {
                    result.id = (int)element;
                }
            
                /* name多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト */
                element = json["name"];
                if (element != null)
                {
                    result.name = (string)element;
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
            
            /* id多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト */
            json["id"] = this.id;
          
            /* name多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト */
            if (this.name != null) { json["name"] = this.name; }
          
            return json;
        }
    }
}
  