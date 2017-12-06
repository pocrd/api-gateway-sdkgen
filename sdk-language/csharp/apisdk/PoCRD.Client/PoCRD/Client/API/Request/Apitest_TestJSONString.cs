// Auto Generated.  DO NOT EDIT!
    
using System;
using Newtonsoft.Json.Linq;

using PoCRD.Client.API.Response;
using PoCRD.Client.Util;
using PoCRD.Client;

namespace PoCRD.Client.API.Request
{
    /**
     * 测试jsonString
     * 
     * @author guankaiqiang
     *
     */
    public class Apitest_TestJSONString : BaseRequest<Api_JSONString> 
    {
        
        /**
         * 当前请求的构造函数，以下参数为该请求的必填参数
         * @param param param
         */
        public Apitest_TestJSONString(string param) 
                    : base("apitest.testJSONString", SecurityType.None)
        {
            try 
            {
                parameters.Put("param", param);
            }
            catch(Exception e)
            {
                throw new LocalException("SERIALIZE_ERROR", LocalException.SERIALIZE_ERROR, e);
            }
        }
        
        /**
         * 私有的默认构造函数，请勿使用
         */
        private Apitest_TestJSONString() : base("apitest.testJSONString", SecurityType.None)
        {
        }
      
        
        /**
         * 当前请求有可能的异常返回值
         */
        public int HandleError()
        {
            switch (response.code) 
            {
                
                default:
                    break;
            }
            return response.code;
        }

        /**
         * 不要直接调用这个方法，API使用者应该访问基类的getResponse()获取接口的返回值
         */
        protected override Api_JSONString GetResult(JObject json) 
        {
            try
            {
                return Api_JSONString.Deserialize(json);
            }
            catch (Exception e)
            {
                logger.Error("Api_JSONString deserialize failed.", e);
            }
            return null;
        }
        
    }
}
  