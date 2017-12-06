// Auto Generated.  DO NOT EDIT!
    
using System;
using Newtonsoft.Json.Linq;

using PoCRD.Client.API.Response;
using PoCRD.Client.Util;
using PoCRD.Client;

namespace PoCRD.Client.API.Request
{
    /**
     * testSecurityTypeUserLogin
     * 
     * @author sunji
     *
     */
    public class Apitest_TestUserLogin : BaseRequest<Api_NumberResp> 
    {
        
        /**
         * 当前请求的构造函数，以下参数为该请求的必填参数
         * @param intParam int param
         */
        public Apitest_TestUserLogin(int intParam) 
                    : base("apitest.testUserLogin", SecurityType.UserLogin)
        {
            try 
            {
                parameters.Put("intParam", intParam.ToString());
            }
            catch(Exception e)
            {
                throw new LocalException("SERIALIZE_ERROR", LocalException.SERIALIZE_ERROR, e);
            }
        }
        
        /**
         * 私有的默认构造函数，请勿使用
         */
        private Apitest_TestUserLogin() : base("apitest.testUserLogin", SecurityType.UserLogin)
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
        protected override Api_NumberResp GetResult(JObject json) 
        {
            try
            {
                return Api_NumberResp.Deserialize(json);
            }
            catch (Exception e)
            {
                logger.Error("Api_NumberResp deserialize failed.", e);
            }
            return null;
        }
        
    }
}
  