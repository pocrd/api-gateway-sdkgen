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
    public class Demo_TestRedirect : BaseRequest<RawString> 
    {
        
        /**
         * 当前请求的构造函数，以下参数为该请求的必填参数
         * @param something 输入参数1多语言测试.  A this is A多语言测试. , B this is B多语言测试. , C this is C多语言测试. , D this is D多语言测试. 
en-us:multi-language test  A multi-language test , B multi-language test , C multi-language test , D multi-language test 
ja-jp:多言語テスト A 多言語テスト, B 多言語テスト, C 多言語テスト, D 多言語テスト
         * @param another 输入参数2多语言测试.  A this is A多语言测试. , B this is B多语言测试. , C this is C多语言测试. , D this is D多语言测试. 
en-us:multi-language test  A multi-language test , B multi-language test , C multi-language test , D multi-language test 
ja-jp:多言語テスト A 多言語テスト, B 多言語テスト, C 多言語テスト, D 多言語テスト
         */
        public Demo_TestRedirect(string something, string another) 
                    : base("demo.testRedirect", SecurityType.None)
        {
            try 
            {
                parameters.Put("something", something);
                parameters.Put("another", another);
            }
            catch(Exception e)
            {
                throw new LocalException("SERIALIZE_ERROR", LocalException.SERIALIZE_ERROR, e);
            }
        }
        
        /**
         * 私有的默认构造函数，请勿使用
         */
        private Demo_TestRedirect() : base("demo.testRedirect", SecurityType.None)
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
  