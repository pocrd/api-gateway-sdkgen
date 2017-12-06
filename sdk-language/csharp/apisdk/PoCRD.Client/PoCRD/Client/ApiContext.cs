using System;
using System.Collections.Generic;
using System.Net;
using System.Text;
using Newtonsoft.Json.Linq;
using slf4net;
using PoCRD.Client.Util;
using PoCRD.Client.API.Response;
using System.Security.Cryptography;

using PoCRD.Client.API.Request;

namespace PoCRD.Client
{
    /**
	 * 存储访问接口所需的上下文信息
	 */
    public class ApiContext
    {
        private static readonly ILogger logger = LoggerFactory.GetLogger("ApiContext");

        private string appid = null;
        private string thirdPartyId = null;
        private int vercode = 0;
        private string vername = null;
        private string location = null;

        private string deviceId = null;
        private string deviceSecret = null;
        private string deviceToken = null;
        private RsaHelper clientPK = null;

        private string userToken = null;
        private long userId = 0;
        private long tokenExpireTime = 0;

        private static String contentRsaPubKey = null;

        private ApiContext()
        {
        }

        /**
         * 获取默认接口上下文, 用于客户端使用
         */
        public static ApiContext getDefaultContext(String appid, int vercode, String vername)
        {
            ApiContext context = new ApiContext();
            context.appid = appid;
            context.vercode = vercode;
            context.vername = vername;

            return context;
        }

        /**
         * 获取默认接口上下文, 用于合作方使用
         */
        public static ApiContext getThridPartyContext(String thirdPartyId, int vercode, String vername)
        {
            ApiContext context = new ApiContext();
            context.thirdPartyId = thirdPartyId;
            context.vercode = vercode;
            context.vername = vername;

            return context;
        }

        public static void setContentRsaPubKey(String key)
        {
            contentRsaPubKey = key;
        }

        public static String getContentRsaPubKey()
        {
            return contentRsaPubKey;
        }

        public ApiContext setClientPK(String publicKey, String privateKey)
        {
            this.clientPK = new RsaHelper(publicKey, privateKey);
            return this;
        }

        RsaHelper getClientPK()
        {
            return clientPK;
        }

        public ApiContext setDeviceInfo(String deviceId, String deviceSecret, String deviceToken)
        {
            this.deviceId = deviceId;
            this.deviceSecret = deviceSecret;
            this.deviceToken = deviceToken;
            return this;
        }

        public ApiContext setUserInfo(long userid, String userToken, long tokenExpireTime)
        {
            this.userId = userid;
            this.userToken = userToken;
            this.tokenExpireTime = tokenExpireTime;
            return this;
        }

        public void setLocation(String location)
        {
            this.location = location;
        }

        public String getLocation()
        {
            return location;
        }

        public void setToken(String tk)
        {
            userToken = tk;
        }

        public String getToken()
        {
            return userToken;
        }

        public String getDeviceId()
        {
            return deviceId;
        }

        public long getUserId()
        {
            return userId;
        }

        public String getAppId()
        {
            return appid;
        }

        public void setTokenExpireTime(long time)
        {
            tokenExpireTime = time;
        }

        public long getTokenExpireTime()
        {
            return tokenExpireTime;
        }

        internal String GetParameterString<T>(BaseRequest<T>[] requests, string businessId) where T : JsonSerializable
        {
            int securityType = 0;
            int len = requests.Length;
            ParameterList parameters = new ParameterList(len * 2);
            StringBuilder methodNames = new StringBuilder();

            for (int i = 0; i < len; i++)
            {
                BaseRequest<T> req = requests[i];

                securityType = securityType | req.getSecurityType();
                foreach (String key in req.GetParameterList().GetKeys())
                {
                    if (CommonParameter.method.Equals(key))
                    {
                        methodNames.Append(req.GetParameterList().Get(key));
                        methodNames.Append(",");
                    }
                    else
                    {
                        if (len == 1)
                        {
                            parameters.Put(key, req.GetParameterList().Get(key));
                        }
                        else
                        {
                            parameters.Put(i + "_" + key, req.GetParameterList().Get(key));
                        }
                    }
                }
            }
            if (methodNames.Length > 0)
            {
                methodNames.Length = methodNames.Length - 1;
            }
            parameters.Put(CommonParameter.method, methodNames.ToString());

            parameters.Put(CommonParameter.format, "json");

            if ((securityType & SecurityType.Integrated) > 0)
            {
                if (thirdPartyId != null && !parameters.ContainsKey(CommonParameter.thirdPartyId))
                {
                    parameters.Put(CommonParameter.thirdPartyId, thirdPartyId);
                }
            }
            else
            {
                if (appid != null && !parameters.ContainsKey(CommonParameter.applicationId))
                {
                    parameters.Put(CommonParameter.applicationId, appid);
                }
            }

            if (location != null && !parameters.ContainsKey(CommonParameter.location))
            {
                parameters.Put(CommonParameter.location, location);
            }

            if (deviceId != null && !parameters.ContainsKey(CommonParameter.deviceId))
            {
                parameters.Put(CommonParameter.deviceId, deviceId);
            }

            if (userId > 0 && !parameters.ContainsKey(CommonParameter.userId))
            {
                parameters.Put(CommonParameter.userId, userId.ToString());
            }

            if (vercode > 0 && !parameters.ContainsKey(CommonParameter.versionCode))
            {
                parameters.Put(CommonParameter.versionCode, "" + vercode);
            }

            if (vername != null && vername.Length > 0 && !parameters.ContainsKey(CommonParameter.versionName))
            {
                parameters.Put(CommonParameter.versionName, vername);
            }

            if (businessId != null)
            {
                parameters.Put(CommonParameter.businessId, businessId);
            }

            parameters.Put(CommonParameter.callId, "" + (long)(new Random().NextDouble() * 10000000000000000L));

            return GetParameterStringInternal(parameters, securityType);
        }

        public ServerResponse fillResponse<T>(BaseRequest<T>[] requests, String data)
             where T : JsonSerializable
        {
            ServerResponse commonResponse = new ServerResponse();
            int errorCode = 0;
            if (data != null)
            {
                try
                {
                    if (data.StartsWith("{", StringComparison.InvariantCultureIgnoreCase))
                    {

                        JObject json = JObject.Parse(data);
                        JArray content = (JArray)json["content"];
                        Api_Response resp = Api_Response.Deserialize(json["stat"].ToString());
                        if (resp != null)
                        {
                            commonResponse.Systime = resp.systime;
                            commonResponse.Cid = resp.cid;
                            commonResponse.SetNotifications(resp.notificationList);
                            commonResponse.ReturnCode = resp.code;

                            if (resp.code == 0)
                            {
                                if (resp.stateList != null && requests.Length == resp.stateList.Count)
                                {
                                    List<Api_CallState> statList = resp.stateList;
                                    int respSize = statList.Count;
                                    for (int i = 0; i < respSize; i++)
                                    {
                                        Api_CallState state = statList[i];
                                        BaseRequest<T> request = requests[i];
                                        request.Systime = resp.systime;
                                        request.FillResponse(state.code, state.length, state.msg,
                                                             (JObject)content[i]);
                                        //request.ResponseLoaded();
                                    }
                                    return commonResponse;
                                }
                                else
                                {
                                    errorCode = ApiCode.UNKNOWN_ERROR;
                                }
                            }
                            else
                            {
                                errorCode = resp.code;
                            }

                            if (errorCode != 0)
                            {
                                foreach (BaseRequest<T> request in requests)
                                {
                                    request.Systime = resp.systime;
                                    request.FillResponse(errorCode, -1, "common error", null);
                                    //request.ResponseLoaded();
                                }
                            }
                        }
                    }
                    else
                    {
                        commonResponse.Systime = DateTime.UtcNow.Subtract(new DateTime(1970, 1, 1)).Ticks / 1000;
                        commonResponse.Cid = "raw string aid";
                        if (requests.Length == 1)
                        {
                            BaseRequest<T> request = requests[0];
                            request.Systime = commonResponse.Systime;
                            request.FillResponse(data);
                            //request.responseLoaded();
                        }
                    }
                }
                catch (Exception e)
                {
                    logger.Error("parse response error. cid=" + commonResponse.Cid, e);
                }
            }
            return commonResponse;
        }

        public void fillError<T>(BaseRequest<T> request, int code)
            where T : JsonSerializable
        {
            request.FillResponse(code, 0, "", null);
        }

        public void fillError<T>(BaseRequest<T>[] requests, int code)
            where T : JsonSerializable
        {
            int size = requests.Length;
            for (int i = 0; i < size; i++)
            {
                requests[i].FillResponse(code, 0, "", null);
            }
        }

        private void signRequest(ParameterList parameters, int securityType)
        {
            if (parameters.ContainsKey(CommonParameter.signature)) { return; }
            try
            {
                if (securityType == 0)
                {
                    parameters.Put(CommonParameter.signatureMethod, "sha1");
                }
                else if ((securityType & SecurityType.Integrated) > 0)
                {
                    parameters.Put(CommonParameter.signatureMethod, "rsa");
                }
                else
                {
                    parameters.Put(CommonParameter.signatureMethod, "sha1");
                }

                StringBuilder sb = new StringBuilder(parameters.Size() * 5);
                List<String> paramNames = new List<String>(parameters.GetKeys());
                paramNames.Sort(); // TODO: 印象里C#的默认字符串排序和Java不太一样
                foreach (String key in paramNames)
                {
                    sb.Append(key);
                    sb.Append('=');
                    sb.Append(parameters.Get(key));
                }

                if (securityType == 0)
                {
                    sb.Append("net.pocrd");
                    if (SDKConfig.IsDebug)
                    {
                        logger.Info("before sig:" + sb.ToString());
                    }
                    byte[] sor = Encoding.UTF8.GetBytes(sb.ToString());
                    SHA1 sha1 = SHA1.Create();
                    byte[] result = sha1.ComputeHash(sor);
                    parameters.Put(CommonParameter.signature, Convert.ToBase64String(result));
                }
                else if ((securityType & SecurityType.Integrated) > 0)
                {
                    if (clientPK == null)
                    {
                        throw new Exception("clientPK is null.");
                    }
                    if (SDKConfig.IsDebug)
                    {
                        logger.Info("before sig:" + sb.ToString());
                    }
                    lock (this)
                    {
                        parameters.Put(CommonParameter.signature,
                                       clientPK.Sign(sb.ToString(), "utf-8"));
                    }
                }
                else
                {
                    if (deviceToken == null)
                    {
                        throw new Exception("deviceToken is null.");
                    }
                    if (deviceSecret == null)
                    {
                        throw new Exception("deviceSecret is null.");
                    }
                    sb.Append(deviceSecret);
                    if (SDKConfig.IsDebug)
                    {
                        logger.Info("before sig:" + sb.ToString());
                    }
                    byte[] sor = Encoding.UTF8.GetBytes(sb.ToString());
                    SHA1 sha1 = SHA1.Create();
                    byte[] result = sha1.ComputeHash(sor);
                    parameters.Put(CommonParameter.signature, Convert.ToBase64String(result));
                }
            }
            catch (Exception e)
            {
                throw new Exception("sign url failed.", e);
            }
        }

        private String GetParameterStringInternal(ParameterList parameters, int securityType)
        {
            if (userToken != null)
            {
                if (!parameters.ContainsKey(CommonParameter.token)) {
                    parameters.Put(CommonParameter.token, userToken);
                }
            }
            else
            {
                if (((securityType & SecurityType.UserLogin) > 0) | ((securityType & SecurityType.UserTrustedDevice) > 0))
                {
                    throw new LocalException(LocalException.TOKEN_MISSING);
                }
                if ((securityType & SecurityType.Integrated) > 0)
                {
                    // donothing.
                }
                else if (securityType > 0)
                {
                    if (deviceToken != null)
                    {
                        if (!parameters.ContainsKey(CommonParameter.deviceToken)) {
                            parameters.Put(CommonParameter.deviceToken, deviceToken);
                        }
                    }
                    else
                    {
                        throw new LocalException(LocalException.TOKEN_MISSING);
                    }
                }
            }
            signRequest(parameters, securityType);

            if (parameters.Size() > 0)
            {
                StringBuilder sb = new StringBuilder(parameters.Size() * 7);
                foreach (String key in parameters.GetKeys())
                {
                    sb.Append(key);
                    sb.Append('=');
                    sb.Append(WebUtility.UrlEncode(parameters.Get(key)));
                    sb.Append('&');
                }
                sb.Length = sb.Length - 1;
                return sb.ToString();
            }
            throw new Exception("invalid request");
        }
    }
}
