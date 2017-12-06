// Auto Generated.  DO NOT EDIT!
    
using System;
using Newtonsoft.Json.Linq;

using PoCRD.Client.API.Response;
using PoCRD.Client.Util;
using PoCRD.Client;

namespace PoCRD.Client.API.Request
{
    /**
     * 测试转发到demoservice
     * 
     * @author rendong
     *
     */
    public class Apitest_TestDemoSayHello : BaseRequest<Api_APITEST_ComplexTestEntity> 
    {
        
        /**
         * 当前请求的构造函数，以下参数为该请求的必填参数
         * @param name say hello
         */
        public Apitest_TestDemoSayHello(string name) 
                    : base("apitest.testDemoSayHello", SecurityType.None)
        {
            try 
            {
                parameters.Put("name", name);
            }
            catch(Exception e)
            {
                throw new LocalException("SERIALIZE_ERROR", LocalException.SERIALIZE_ERROR, e);
            }
        }
        
        /**
         * 私有的默认构造函数，请勿使用
         */
        private Apitest_TestDemoSayHello() : base("apitest.testDemoSayHello", SecurityType.None)
        {
        }
      
        
        /**
         * 当前请求有可能的异常返回值
         */
        public int HandleError()
        {
            switch (response.code) 
            {
                
                /* for测试 */
                case ApiCode.TEST_FOR_TEST123_123: {
                    break;
                }
  
                /* for测试 */
                case ApiCode.TEST_FOR_TEST456_456: {
                    break;
                }
  
                /* for测试 */
                case ApiCode.TEST_FOR_TEST789_789: {
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
        protected override Api_APITEST_ComplexTestEntity GetResult(JObject json) 
        {
            try
            {
                return Api_APITEST_ComplexTestEntity.Deserialize(json);
            }
            catch (Exception e)
            {
                logger.Error("Api_APITEST_ComplexTestEntity deserialize failed.", e);
            }
            return null;
        }
        
    }
}
  