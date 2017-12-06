using System;

namespace PoCRD.Client
{
    public class LocalException : Exception
    {
        public const int NOT_INIT = int.MinValue;
        public const int UNKNOWN = -1;
        public const int TOKEN_MISSING = 1000;
        public const int CERT_BROKEN = 1010;
        public const int SERIALIZE_ERROR = 1020;
        public const int SOCKET_TIMEOUT = 1030;

        private int code;
        private String errorData;

        public LocalException(int code)
        {
            this.code = code;
        }

        public LocalException(String msg, int code) : base(msg)
        {
            this.code = code;
        }

        public LocalException(String msg, int code, Exception e) : base(msg, e)
        {
            this.code = code;
        }

        public int getCode()
        {
            return code;
        }

        public String getErrorData()
        {
            return errorData;
        }

        public void setErrorData(String errorData)
        {
            this.errorData = errorData;
        }
    }
}