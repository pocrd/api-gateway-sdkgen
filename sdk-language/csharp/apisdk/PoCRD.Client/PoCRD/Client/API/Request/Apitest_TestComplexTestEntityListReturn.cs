// Auto Generated.  DO NOT EDIT!
    
using System;
using Newtonsoft.Json.Linq;

using PoCRD.Client.API.Response;
using PoCRD.Client.Util;
using PoCRD.Client;

namespace PoCRD.Client.API.Request
{
    /**
     * testComplexTestEntityListReturn
     * 
     * @author rendong
     *
     */
    public class Apitest_TestComplexTestEntityListReturn : BaseRequest<Api_APITEST_ComplexTestEntity_ArrayResp> 
    {
        
        /**
         * 当前请求的构造函数，以下参数为该请求的必填参数
         */
        public Apitest_TestComplexTestEntityListReturn() 
                    : base("apitest.testComplexTestEntityListReturn", SecurityType.None)
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
        protected override Api_APITEST_ComplexTestEntity_ArrayResp GetResult(JObject json) 
        {
            try
            {
                return Api_APITEST_ComplexTestEntity_ArrayResp.Deserialize(json);
            }
            catch (Exception e)
            {
                logger.Error("Api_APITEST_ComplexTestEntity_ArrayResp deserialize failed.", e);
            }
            return null;
        }
        
    }
}
  