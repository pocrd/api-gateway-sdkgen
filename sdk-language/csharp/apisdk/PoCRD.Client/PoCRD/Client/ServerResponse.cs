using System;
using slf4net;

using System.Collections.Generic;

using PoCRD.Client.API.Response;
using Newtonsoft.Json.Linq;

namespace PoCRD.Client
{
    public class ServerResponse
    {
        private static readonly ILogger logger = LoggerFactory.GetLogger("ServerResponse");

        //通知中的积分关键字
        private const string CREDIT_KEY = "net.pocrd.CREDIT";
        //通知中的消息关键字
        private const string MSG_KEY = "net.pocrd.MSG";

        //消息下发通知
        private List<Api_MessageNotification> messageNotifications;
        //积分下发通知
        private List<Api_CreditNotification> creditNotifications;

        /**
		 * 结果返回时间
		 *
		 * @return resp.systime
		 */
        public long Systime
        {
            get;
            internal set;
        }

        /**
		 * 调用编号
		 *
		 * @return 调用编号
		 */
        public String Cid
        {
            get;
            internal set;
        }

        /// <summary>
        /// 结果编码
        /// </summary>
        /// <value>The return code.</value>
        public int ReturnCode
        {
            get;
            internal set;
        }

        //http返回的raw data
        public string Data
        {
            get;
            internal set;
        }

        internal void SetNotifications(List<Api_KeyValuePair> notifications)
        {
            if (notifications != null && notifications.Count > 0)
            {
                foreach (Api_KeyValuePair pair in notifications)
                {
                    if (pair != null)
                    {
                        if (CREDIT_KEY == pair.key)
                        {
                            JArray creditNotificationListArray = JArray.Parse(pair.value);
                            if (creditNotificationListArray != null && creditNotificationListArray.Count > 0)
                            {
                                int len = creditNotificationListArray.Count;
                                creditNotifications = new List<Api_CreditNotification>(len);
                                for (int i = 0; i < len; i++)
                                {
                                    JToken jo = creditNotificationListArray[i];
                                    if (jo != null)
                                    {
                                        creditNotifications.Add(Api_CreditNotification.Deserialize((JObject)jo));
                                    }
                                }
                            }
                        }
                        else if (MSG_KEY == pair.key)
                        {
                            JArray messageNotificationListArray = JArray.Parse(pair.value);
                            if (messageNotificationListArray != null && messageNotificationListArray.Count > 0)
                            {
                                int len = messageNotificationListArray.Count;
                                messageNotifications = new List<Api_MessageNotification>(len);
                                for (int i = 0; i < len; i++)
                                {
                                    JToken jo = messageNotificationListArray[i];
                                    if (jo != null)
                                    {
                                        messageNotifications.Add(Api_MessageNotification.Deserialize((JObject)jo));
                                    }
                                }
                            }
                        }
                    }
                    //对该版本不支持的通知丢弃
                }
            }
        }
    }
}
