// Auto Generated.  DO NOT EDIT!
    
using System;
using System.Collections.Generic;
using Newtonsoft.Json.Linq;

using PoCRD.Client.API.Response;
using PoCRD.Client.Util;
using PoCRD.Client;

namespace PoCRD.Client.API.Request
{
    /**
     * 测试rsa加解密
     * 
     * @author guankaiqiang
     *
     */
    public class Apitest_TestRsaEncrypt : BaseRequest<Api_StringResp> 
    {
        private RsaHelper rsaHelper = null;
        
        /**
         * 当前请求的构造函数，以下参数为该请求的必填参数
         * @param param1 param1
         * @param param3 param3
         * @param param5 param5
         * @param param7 param7
         */
        public Apitest_TestRsaEncrypt(string param1, Api_APITEST_SimpleTestEntity param3, string param5, int[]  param7) 
                    : base("apitest.testRsaEncrypt", SecurityType.None)
        {
            try 
            {
                if (rsaHelper == null) 
                {
                    rsaHelper = new RsaHelper(ApiContext.getContentRsaPubKey());
                }
                parameters.Put("param1", rsaHelper.EncryptData(param1, "utf-8"));
                parameters.Put("param3", rsaHelper.EncryptData(param3.Serialize().ToString(), "utf-8"));
                parameters.Put("param5", param5);
                JArray param7Array = new JArray();
                if (param7 != null)
                {
                    foreach (int entry in param7)
                    {
                        param7Array.Add(entry);
                    }
                }
                parameters.Put("param7", rsaHelper.EncryptData(param7Array.ToString(), "utf-8"));
            }
            catch(Exception e)
            {
                throw new LocalException("SERIALIZE_ERROR", LocalException.SERIALIZE_ERROR, e);
            }
        }
        
        /**
         * 私有的默认构造函数，请勿使用
         */
        private Apitest_TestRsaEncrypt() : base("apitest.testRsaEncrypt", SecurityType.None)
        {
        }
      
        
        /**
         * 当前请求的非必填参数
         * @param param2 param2
         */
        public void SetParam2(string param2) 
        {
            try 
            {
                if (rsaHelper == null) 
                {
                    rsaHelper = new RsaHelper(ApiContext.getContentRsaPubKey());
                }
                parameters.Put("param2", rsaHelper.EncryptData(param2, "utf-8"));
        
            }
            catch (Exception e)
            {
                throw new LocalException("SERIALIZE_ERROR", LocalException.SERIALIZE_ERROR, e);
            }
        }
        
        /**
         * 当前请求的非必填参数
         * @param param4 param4
         */
        public void SetParam4(Api_APITEST_SimpleTestEntity param4) 
        {
            try 
            {
                if (rsaHelper == null) 
                {
                    rsaHelper = new RsaHelper(ApiContext.getContentRsaPubKey());
                }
                parameters.Put("param4", rsaHelper.EncryptData(param4.Serialize().ToString(), "utf-8"));
        
            }
            catch (Exception e)
            {
                throw new LocalException("SERIALIZE_ERROR", LocalException.SERIALIZE_ERROR, e);
            }
        }
        
        /**
         * 当前请求的非必填参数
         * @param param6 param6
         */
        public void SetParam6(string param6) 
        {
            try 
            {
                parameters.Put("param6", param6);
            }
            catch (Exception e)
            {
                throw new LocalException("SERIALIZE_ERROR", LocalException.SERIALIZE_ERROR, e);
            }
        }
        
        /**
         * 当前请求的非必填参数
         * @param param8 param8
         */
        public void SetParam8(int[]  param8) 
        {
            try 
            {
                JArray param8Array = new JArray();
                if (param8 != null)
                {
                    foreach (int entry in param8)
                    {
                        param8Array.Add(entry);
                    }
                }
                if (rsaHelper == null) 
                {
                    rsaHelper = new RsaHelper(ApiContext.getContentRsaPubKey());
                }
                parameters.Put("param8", rsaHelper.EncryptData(param8Array.ToString(), "utf-8"));
            
            }
            catch (Exception e)
            {
                throw new LocalException("SERIALIZE_ERROR", LocalException.SERIALIZE_ERROR, e);
            }
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
  