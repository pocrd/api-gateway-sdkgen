using System;
using System.Text;
using PoCRD.Client.Util;
using Newtonsoft.Json.Linq;
using slf4net;

namespace PoCRD.Client
{
    public abstract class BaseRequest<T> where T : JsonSerializable
    {
        protected static readonly ILogger logger = LoggerFactory.GetLogger("BaseRequest");
        private String methodName;
        private int securityType;
        protected ParameterList parameters = new ParameterList();
        protected Response<T> response = new Response<T>();
        
        public BaseRequest(String methodName, int securityType)
        {
            this.securityType = securityType;
            this.methodName = methodName;
            this.parameters.Put(CommonParameter.method, methodName);
        }

        public String getMethodName()
        {
            return methodName;
        }

        public int getReturnCode()
        {
            return response.code;
        }

        public String getReturnMessage()
        {
            return response.message;
        }

        public int getSecurityType()
        {
            return this.securityType;
        }

        internal void setSecurityType(int value)
        {
            this.securityType = value; 
        }

        public long Systime
        {
            get;
            internal set;
        }

        public ParameterList GetParameterList() 
        {
            return this.parameters;
        }

        /// <summary>
        /// 用于记录访问日志
        /// </summary>
        public String GetStringInfo()
        {
            if (parameters != null) {
                StringBuilder sb = new StringBuilder(parameters.Size() * 10);
                foreach (String key in parameters.GetKeys())
                {
                    sb.Append(key);
                    sb.Append("=");
                    sb.Append(parameters.Get(key));
                    sb.Append("&");
                }
                return sb.ToString();
            }
            return "";
        }

        protected abstract T GetResult(JObject json);

        public void FillResponse(int code, int length, String msg, JObject json)
        {
            response.code = code;
            response.length = length;
            response.message = msg;
            if (json != null)
            {
                response.result = this.GetResult(json);
            }
        }

        internal virtual void FillResponse(String rawString)
        {
            // 只有返回RawString的子类才会给出如下实现,否则子类实现中也应什么都不做
            //        response.code = 0;
            //        response.length = rawString.length();
            //        response.message = "Success";
            //        response.result = (T)rawString;
        }

        public T GetResponse()
        {
            return response.result;
        }

    }
}
