using System;
using Newtonsoft.Json.Linq;

namespace PoCRD.Client.Util
{
    public class RawString : JsonSerializable
    {
        string rawString;

        public RawString(){
            
        }

        public RawString(string rawString){
            this.rawString = rawString;
        }


        /**
         * 反序列化函数，用于从json字符串反序列化本类型实例
         */
        public static RawString Deserialize(String rawString)
        {
            RawString raw = new RawString();
            raw.rawString = rawString;

            return raw;
        }

        /**
         * 反序列化函数，用于从json节点对象反序列化本类型实例
         */
        public static RawString Deserialize(JObject json)
        {
            if (json != null)
            {
                RawString result = new RawString();
                JToken element = null;

                /* str */
                element = json["rawString"];
                if (element != null)
                {
                    result.rawString = (string)element;
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
            if (this.rawString != null) { json["rawString"] = this.rawString; }

            return json;
        }

        /**
         * 重载 ToString 函数, 获得 rawString
         */
        public override string ToString()
        {
            return rawString;
        }
    }
}
