package net.pocrd.m.app.client;

public class SecurityType {
    public static final int None                     = 0;
    public static final int RegisteredDevice         = 0x0100;
    public static final int UserTrustedDevice        = 0x0400;
    public static final int MobileOwner              = 0x0800;
    public static final int MobileOwnerTrustedDevice = 0x1000;
    public static final int UserLogin                = 0x2000;
    public static final int UserLoginAndMobileOwner  = UserLogin + MobileOwner;
    public static final int Integrated                = 0x10000000;
    public static final int Internal                 = 0x20000000;
}
