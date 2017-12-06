// Auto Generated.  DO NOT EDIT!
    
using System;
using Newtonsoft.Json.Linq;

using PoCRD.Client.API.Response;
using PoCRD.Client.Util;
using PoCRD.Client;

namespace PoCRD.Client.API.Request
{
    /**
     * Api文档RsaEncrypted字段展示测试
     * 
     * @author sunji180
     *
     */
    public class Apitest_TestApiParameterRsaEncrypted : BaseRequest<Api_StringResp> 
    {
        private RsaHelper rsaHelper = null;
        
        /**
         * 当前请求的构造函数，以下参数为该请求的必填参数
         * @param rsaEncrypted 参数需用rsa方式加密
         * @param noRsaEncrypt 无加密
         */
        public Apitest_TestApiParameterRsaEncrypted(string rsaEncrypted, string noRsaEncrypt) 
                    : base("apitest.testApiParameterRsaEncrypted", SecurityType.None)
        {
            try 
            {
                if (rsaHelper == null) 
                {
                    rsaHelper = new RsaHelper(ApiContext.getContentRsaPubKey());
                }
                parameters.Put("rsaEncrypted", rsaHelper.EncryptData(rsaEncrypted, "utf-8"));
                parameters.Put("noRsaEncrypt", noRsaEncrypt);
            }
            catch(Exception e)
            {
                throw new LocalException("SERIALIZE_ERROR", LocalException.SERIALIZE_ERROR, e);
            }
        }
        
        /**
         * 私有的默认构造函数，请勿使用
         */
        private Apitest_TestApiParameterRsaEncrypted() : base("apitest.testApiParameterRsaEncrypted", SecurityType.None)
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
  