// Auto Generated.  DO NOT EDIT!
    
using System;
using Newtonsoft.Json.Linq;

using PoCRD.Client.API.Response;
using PoCRD.Client.Util;
using PoCRD.Client;

namespace PoCRD.Client.API.Request
{
    /**
     * testSimpleTestEntityReturn
     * 
     * @author rendong
     *
     */
    public class Apitest_TestSimpleTestEntityReturn : BaseRequest<Api_APITEST_SimpleTestEntity> 
    {
        
        /**
         * 当前请求的构造函数，以下参数为该请求的必填参数
         * @param strParam string param
         */
        public Apitest_TestSimpleTestEntityReturn(string strParam) 
                    : base("apitest.testSimpleTestEntityReturn", SecurityType.None)
        {
            try 
            {
                parameters.Put("strParam", strParam);
            }
            catch(Exception e)
            {
                throw new LocalException("SERIALIZE_ERROR", LocalException.SERIALIZE_ERROR, e);
            }
        }
        
        /**
         * 私有的默认构造函数，请勿使用
         */
        private Apitest_TestSimpleTestEntityReturn() : base("apitest.testSimpleTestEntityReturn", SecurityType.None)
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
        protected override Api_APITEST_SimpleTestEntity GetResult(JObject json) 
        {
            try
            {
                return Api_APITEST_SimpleTestEntity.Deserialize(json);
            }
            catch (Exception e)
            {
                logger.Error("Api_APITEST_SimpleTestEntity deserialize failed.", e);
            }
            return null;
        }
        
    }
}
  