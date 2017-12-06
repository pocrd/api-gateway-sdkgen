using System;

namespace PoCRD.Client
{
    public static class SecurityType
    {
        public const int None = 0;
        public const int RegisteredDevice = 0x0100;
        public const int UserTrustedDevice = 0x0400;
        public const int MobileOwner = 0x0800;
        public const int MobileOwnerTrustedDevice = 0x1000;
        public const int UserLogin = 0x2000;
        public const int UserLoginAndMobileOwner = UserLogin + MobileOwner;
        public const int Integrated = 0x10000000;
        public const int Internal = 0x20000000;
    }
}
