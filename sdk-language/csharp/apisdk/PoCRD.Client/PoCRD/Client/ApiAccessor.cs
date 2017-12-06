using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Text;
using slf4net;

using PoCRD.Client.Util;
using PoCRD.Client.API.Request;

namespace PoCRD.Client
{
    public class ApiAccessor
    {
        private static readonly ILogger logger = LoggerFactory.GetLogger("ApiAccessor");
        private const string CONTENT_TYPE = "application/x-www-form-urlencoded;charset=UTF-8";
        private ApiContext apiContext;
        private int connTimeout;
        private int readTimeout;

        private string apiUrl;

        public ApiAccessor(ApiContext apiContext, int connTimeout, int readTimeout, string apiUrl)
        {
            this.apiContext = apiContext;
            this.apiUrl = apiUrl;
            this.connTimeout = connTimeout;
            this.readTimeout = readTimeout;
        }

		public ServerResponse FillApiResponse<T>(BaseRequest<T> request)
			where T : JsonSerializable
		{
            return this.FillApiResponse(new BaseRequest<T>[] { request });
		}

        public ServerResponse FillApiResponse<T>(BaseRequest<T>[] requests)
		    where T : JsonSerializable
        {
			ServerResponse commonResponse;
            if (requests == null || requests.Length == 0)
			{
				return null;
			}
			try
			{
                Uri uri;
                Uri.TryCreate(apiUrl, UriKind.Absolute, out uri);
                HttpWebRequest request = WebRequest.CreateHttp(apiUrl);
                request.ContentType = CONTENT_TYPE;
                request.Method = "POST";
                request.KeepAlive = true;
                request.CookieContainer = new CookieContainer();
                Cookie cookie = new Cookie("http.useragent", "openapi-sdk");
                cookie.Domain = uri.Host;
                request.CookieContainer.Add(cookie);
                request.Timeout = connTimeout;
                request.ReadWriteTimeout = readTimeout;

                String parameters = apiContext.GetParameterString(requests, null);
                Stream stream = request.GetRequestStream();
                stream.Write(Encoding.UTF8.GetBytes(parameters), 0, parameters.Length);

                String link = apiUrl + "?" + parameters;
                if (SDKConfig.IsDebug)
				{
					logger.Info("request to :" + link);
				}

                using (var response = (HttpWebResponse)request.GetResponse())
                {
                    using (var reader = new StreamReader(response.GetResponseStream()))
                    {
                        String respBody = reader.ReadToEnd();
						if (SDKConfig.IsDebug)
						{
                            logger.Info("response code:" + response.StatusCode + " body: " + respBody);
						}
                        if (response.StatusCode != HttpStatusCode.OK)
						{
                            logger.Error("Api access failed. httpcode:" + response.StatusCode + "  url=" + link);
                            throw new LocalException(ApiCode.UNKNOWN_ERROR);
						}
                        commonResponse = apiContext.fillResponse(requests, respBody);
                    }
                }
			}
			catch (LocalException ae)
			{
                LocalException localException = new LocalException(ae.Message, ae.getCode(), ae);
				localException.setErrorData(ae.getErrorData());
				throw localException;
			}

			return commonResponse;
        }
    }
}
