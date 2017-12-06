// Auto Generated.  DO NOT EDIT!
    
using System;
using Newtonsoft.Json.Linq;

using PoCRD.Client.API.Response;
using PoCRD.Client.Util;
using PoCRD.Client;

namespace PoCRD.Client.API.Request
{
    /**
     * 服务端获取客户端IP测试
     * 
     * @author sunji180
     *
     */
    public class Apitest_TestAutowiredClientIP : BaseRequest<Api_StringResp> 
    {
        
        /**
         * 当前请求的构造函数，以下参数为该请求的必填参数
         */
        public Apitest_TestAutowiredClientIP() 
                    : base("apitest.testAutowiredClientIP", SecurityType.None)
        {
        }
        
        /**
         * 当前请求有可能的异常返回值
         */
        public int HandleError()
        {
            switch (response.code) 
            {
                
                /* 测试类未知错误 */
                case ApiCode.TEST_UNKNOW_ERROR_1: {
                    break;
                }
  
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
  