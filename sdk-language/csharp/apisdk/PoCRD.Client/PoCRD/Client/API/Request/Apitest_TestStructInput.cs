// Auto Generated.  DO NOT EDIT!
    
using System;
using Newtonsoft.Json.Linq;

using PoCRD.Client.API.Response;
using PoCRD.Client.Util;
using PoCRD.Client;

namespace PoCRD.Client.API.Request
{
    /**
     * 结构化入参测试
     * 
     * @author guankaiqiang
     *
     */
    public class Apitest_TestStructInput : BaseRequest<Api_APITEST_SimpleTestEntity> 
    {
        
        /**
         * 当前请求的构造函数，以下参数为该请求的必填参数
         * @param simpleTestEntity SimpleTestEntity结构化入参
         */
        public Apitest_TestStructInput(Api_APITEST_SimpleTestEntity simpleTestEntity) 
                    : base("apitest.testStructInput", SecurityType.None)
        {
            try 
            {
                parameters.Put("simpleTestEntity", simpleTestEntity.Serialize().ToString());
            }
            catch(Exception e)
            {
                throw new LocalException("SERIALIZE_ERROR", LocalException.SERIALIZE_ERROR, e);
            }
        }
        
        /**
         * 私有的默认构造函数，请勿使用
         */
        private Apitest_TestStructInput() : base("apitest.testStructInput", SecurityType.None)
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
  