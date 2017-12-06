using System;

namespace PoCRD.Client
{
    public class Response<T>
    {
        public int code;
        public String message;
        public T result;
        public int length;

        public Response()
        {
            code = LocalException.NOT_INIT;
        }
    }
}
