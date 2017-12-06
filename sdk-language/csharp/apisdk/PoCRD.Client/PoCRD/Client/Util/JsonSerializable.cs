using System;
using Newtonsoft.Json.Linq;

namespace PoCRD.Client.Util
{
    public interface JsonSerializable
    {
        JObject Serialize();
    }
}
