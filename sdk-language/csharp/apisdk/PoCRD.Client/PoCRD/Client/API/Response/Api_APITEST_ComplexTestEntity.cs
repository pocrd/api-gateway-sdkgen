// Auto Generated.  DO NOT EDIT!
using System;

using System.Collections.Generic;

using Newtonsoft.Json.Linq;

using PoCRD.Client.Util;

namespace PoCRD.Client.API.Response
{
    public class Api_APITEST_ComplexTestEntity : JsonSerializable
    {
        
        /**
         * strValue
         */
        public string strValue;
      
        /**
         * shortValue
         */
        public short shortValue;
      
        /**
         * byteValue
         */
        public byte byteValue;
      
        /**
         * doubleValue
         */
        public double doubleValue;
      
        /**
         * floatValue
         */
        public float floatValue;
      
        /**
         * boolValue
         */
        public bool boolValue;
      
        /**
         * intValue
         */
        public int intValue;
      
        /**
         * longValue
         */
        public long longValue;
      
        /**
         * charValue
         */
        public char charValue;
      
        /**
         * SimpleTestEntity List
         */
        public List<Api_APITEST_SimpleTestEntity> simpleTestEntityList;
            
        /**
         * simpleTestEntity
         */
        public Api_APITEST_SimpleTestEntity simpleTestEntity;
      
        /**
         * dynamic entity 本字段为动态数据类型, 可能类型为以下种类:SimpleTestEntity, BadResponse, 
         */
        public Api_DynamicEntity dynamicEntity;
      
        /**
         * dynamic entity list 本字段为动态数据类型, 可能类型为以下种类:SimpleTestEntity, BadResponse, KeyValueList, 
         */
        public List<Api_DynamicEntity> dynamicEntityList;
            

        /**
         * 反序列化函数，用于从json字符串反序列化本类型实例
         */
        public static Api_APITEST_ComplexTestEntity Deserialize(string json) 
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
        public static Api_APITEST_ComplexTestEntity Deserialize(JObject json) 
        {
            if (json != null) 
            {
                Api_APITEST_ComplexTestEntity result = new Api_APITEST_ComplexTestEntity();
                JToken element = null;
                
                /* strValue */
                element = json["strValue"];
                if (element != null)
                {
                    result.strValue = (string)element;
                }
            
                /* shortValue */
                element = json["shortValue"];
                if (element != null)
                {
                    result.shortValue = (short)element;
                }
            
                /* byteValue */
                element = json["byteValue"];
                if (element != null)
                {
                    result.byteValue = (byte)element;
                }
            
                /* doubleValue */
                element = json["doubleValue"];
                if (element != null)
                {
                    result.doubleValue = (double)element;
                }
            
                /* floatValue */
                element = json["floatValue"];
                if (element != null)
                {
                    result.floatValue = (float)element;
                }
            
                /* boolValue */
                element = json["boolValue"];
                if (element != null)
                {
                    result.boolValue = (bool)element;
                }
            
                /* intValue */
                element = json["intValue"];
                if (element != null)
                {
                    result.intValue = (int)element;
                }
            
                /* longValue */
                element = json["longValue"];
                if (element != null)
                {
                    result.longValue = (long)element;
                }
            
                /* charValue */
                element = json["charValue"];
                if (element != null)
                {
                    result.charValue = (char)element;
                }
            
                /* SimpleTestEntity List */
                element = json["simpleTestEntityList"];
                if (element != null)
                {
                    var simpleTestEntityListArray = (JArray)element;
                    int len = simpleTestEntityListArray.Count;
                    result.simpleTestEntityList = new List<Api_APITEST_SimpleTestEntity>();
                    for (int i = 0; i < len; i++)
                    {
                        result.simpleTestEntityList.Add(Api_APITEST_SimpleTestEntity.Deserialize((JObject)simpleTestEntityListArray[i]));
                    }
                }
      
                /* simpleTestEntity */
                element = json["simpleTestEntity"];
                if (element != null)
                {
                    result.simpleTestEntity = Api_APITEST_SimpleTestEntity.Deserialize((JObject)element);
                }
            
                /* dynamic entity 本字段为动态数据类型, 可能类型为以下种类:SimpleTestEntity, BadResponse,  */
                element = json["dynamicEntity"];
                if (element != null)
                {
                    result.dynamicEntity = Api_DynamicEntity.Deserialize((JObject)element);
                    JToken e = ((JObject)element)["entity"];
                    if (e != null) 
                    {
                        if ("SimpleTestEntity".Equals(result.dynamicEntity.typeName)) 
                            {
                                result.dynamicEntity.entity = Api_APITEST_SimpleTestEntity.Deserialize((JObject)e);
                            } else if ("BadResponse".Equals(result.dynamicEntity.typeName)) 
                            {
                                result.dynamicEntity.entity = Api_APITEST_BadResponse.Deserialize((JObject)e);
                            }
                    }
                }
            
                /* dynamic entity list 本字段为动态数据类型, 可能类型为以下种类:SimpleTestEntity, BadResponse, KeyValueList,  */
                element = json["dynamicEntityList"];
                if (element != null)
                {
                    var dynamicEntityListArray = (JArray)element;
                    int len = dynamicEntityListArray.Count;
                    result.dynamicEntityList = new List<Api_DynamicEntity>();
                    for (int i = 0; i < len; i++)
                    {
                        JObject jo = (JObject)dynamicEntityListArray[i];
                        if (jo != null) 
                        {
                            Api_DynamicEntity de = Api_DynamicEntity.Deserialize(jo);
                            JToken e = jo["entity"];
                            if (e != null) 
                            {
                                if ("SimpleTestEntity".Equals(de.typeName)) 
                                    {
                                        de.entity = Api_APITEST_SimpleTestEntity.Deserialize((JObject)e);
                                    } else if ("BadResponse".Equals(de.typeName)) 
                                    {
                                        de.entity = Api_APITEST_BadResponse.Deserialize((JObject)e);
                                    } else if ("KeyValueList".Equals(de.typeName)) 
                                    {
                                        de.entity = Api_KeyValueList.Deserialize((JObject)e);
                                    }
                                result.dynamicEntityList.Add(de);
                            }
                        }
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
            
            /* strValue */
            if (this.strValue != null) { json["strValue"] = this.strValue; }
          
            /* shortValue */
            json["shortValue"] = this.shortValue;
          
            /* byteValue */
            json["byteValue"] = this.byteValue;
          
            /* doubleValue */
            json["doubleValue"] = this.doubleValue;
          
            /* floatValue */
            json["floatValue"] = this.floatValue;
          
            /* boolValue */
            json["boolValue"] = this.boolValue;
          
            /* intValue */
            json["intValue"] = this.intValue;
          
            /* longValue */
            json["longValue"] = this.longValue;
          
            /* charValue */
            if (this.charValue != Char.MinValue)
            {
                json["charValue"] = this.charValue.ToString();
            }
          
            /* SimpleTestEntity List */
            if (this.simpleTestEntityList != null) 
            {
                var simpleTestEntityListArray = new JArray();
                foreach (var entry in this.simpleTestEntityList)
                {
                    if (entry != null)
                    {
                        simpleTestEntityListArray.Add(entry.Serialize());
                    }
                }
                json["simpleTestEntityList"] = simpleTestEntityListArray;
            }
      
            /* simpleTestEntity */
            if (this.simpleTestEntity != null) { json["simpleTestEntity"] = this.simpleTestEntity.Serialize(); }
          
            /* dynamic entity 本字段为动态数据类型, 可能类型为以下种类:SimpleTestEntity, BadResponse,  */
            if (this.dynamicEntity != null) { json["dynamicEntity"] = this.dynamicEntity.Serialize(); }
          
            /* dynamic entity list 本字段为动态数据类型, 可能类型为以下种类:SimpleTestEntity, BadResponse, KeyValueList,  */
            if (this.dynamicEntityList != null) 
            {
                var dynamicEntityListArray = new JArray();
                foreach (var entry in this.dynamicEntityList)
                {
                    if (entry != null)
                    {
                        dynamicEntityListArray.Add(entry.Serialize());
                    }
                }
                json["dynamicEntityList"] = dynamicEntityListArray;
            }
      
            return json;
        }
    }
}
  