// Auto Generated.  DO NOT EDIT!
    
using System;
using Newtonsoft.Json.Linq;

using PoCRD.Client.API.Response;
using PoCRD.Client.Util;
using PoCRD.Client;

namespace PoCRD.Client.API.Request
{
    /**
     * test redirect多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト
     * 
     * @author demo
     *
     */
    public class Demo_TestIgnoreParameterForSecurity : BaseRequest<Api_StringResp> 
    {
        
        /**
         * 当前请求的构造函数，以下参数为该请求的必填参数
         * @param in 输入参数多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト
         */
        public Demo_TestIgnoreParameterForSecurity(string r_in) 
                    : base("demo.testIgnoreParameterForSecurity", SecurityType.None)
        {
            try 
            {
                parameters.Put("in", r_in);
            }
            catch(Exception e)
            {
                throw new LocalException("SERIALIZE_ERROR", LocalException.SERIALIZE_ERROR, e);
            }
        }
        
        /**
         * 私有的默认构造函数，请勿使用
         */
        private Demo_TestIgnoreParameterForSecurity() : base("demo.testIgnoreParameterForSecurity", SecurityType.None)
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
        protected override Api_StringResp GetResult(JObject json) 
        {
            try
            {
                return Api_StringResp.Deserialize(json);
            }
            catch (Exception e)
            {
                logger.Error("Api_StringResp deserialize failed.", e);
            }
            return null;
        }
        
    }
}
  