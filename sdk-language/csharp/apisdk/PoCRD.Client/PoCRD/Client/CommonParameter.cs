using System;

namespace PoCRD.Client
{
    public static class CommonParameter
    {
        /**
         * Format 返回值格式，取值为枚举SerializeType中的定义
         */
        public const string format = "_ft";

        /**
         * Location 用于返回信息国际化
         */
        public const string location = "_lo";

        /**
         * token 代表访问者身份
         */
        public const string token = "_tk";

        /**
         * device token 代表访问设备的身份
         */
        public const string deviceToken = "_dtk";

        /**
         * method 请求的资源名
         */
        public const string method = "_mt";

        /**
         * signature 参数字符串签名
         */
        public const string signature = "_sig";

        /**
         * application id 应用编号
         */
        public const string applicationId = "_aid";

        /**
         * call id 客户端调用编号
         */
        public const string callId = "_cid";

        /**
         * device id 设备标示符
         */
        public const string deviceId = "_did";

        /**
         * user id 用户标示符
         */
        public const string userId = "_uid";

        /**
         * version code 客户端数字版本号
         */
        public const string versionCode = "_vc";

        /**
         * version code 客户端版本名
         */
        public const string versionName = "_vn";

        /**
         * signature method 签名算法 hmac,md5,sha1,rsa,ecc
         */
        public const string signatureMethod = "_sm";

        /**
         * 业务id, 用于业务相关的风控判断
         */
        public const string businessId = "_bid";

        /**
         * 第三方集成的身份标识(第三方集成情景下使用)
         */
        public const string thirdPartyId = "_tpid";
    }
}
