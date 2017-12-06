// Auto Generated.  DO NOT EDIT!
    
using System;
using Newtonsoft.Json.Linq;

using PoCRD.Client.API.Response;
using PoCRD.Client.Util;
using PoCRD.Client;

namespace PoCRD.Client.API.Request
{
    /**
     * 测试RawString
     * 
     * @author guankaiqiang
     *
     */
    public class Apitest_TestRawString : BaseRequest<RawString> 
    {
        
        /**
         * 当前请求的构造函数，以下参数为该请求的必填参数
         * @param str str value
         */
        public Apitest_TestRawString(string str) 
                    : base("apitest.testRawString", SecurityType.None)
        {
            try 
            {
                parameters.Put("str", str);
            }
            catch(Exception e)
            {
                throw new LocalException("SERIALIZE_ERROR", LocalException.SERIALIZE_ERROR, e);
            }
        }
        
        /**
         * 私有的默认构造函数，请勿使用
         */
        private Apitest_TestRawString() : base("apitest.testRawString", SecurityType.None)
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
        protected override RawString GetResult(JObject json) 
        {
            return null;
        }
        
        internal override void FillResponse(string rawString) 
        {
            response.code = 0;
            response.length = rawString.Length;
            response.message = "Success";
            response.result = new RawString(rawString);
        }
        
    }
}
  