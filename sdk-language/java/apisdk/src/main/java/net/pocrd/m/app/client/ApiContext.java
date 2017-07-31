package net.pocrd.m.app.client;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import net.pocrd.m.app.client.api.request.ApiCode;
import net.pocrd.m.app.client.api.resp.Api_CallState;
import net.pocrd.m.app.client.api.resp.Api_Response;
import net.pocrd.m.app.client.util.Base64Util;
import net.pocrd.m.app.client.util.RsaHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * 存储访问接口所需的上下文信息
 */
public class ApiContext {
    private static final Logger logger     = LoggerFactory.getLogger(ApiContext.class);
    private static final Object signLocker = new Object();

    private String appid        = null;
    private String thirdPartyId = null;
    private int    vercode      = 0;
    private String vername      = null;
    private String location     = null;

    private String    deviceId     = null;
    private String    deviceSecret = null;
    private String    deviceToken  = null;
    private RsaHelper clientPK     = null;

    private String userToken       = null;
    private long   userId          = 0;
    private long   tokenExpireTime = 0;

    private static String contentRsaPubKey = null;

    private ApiContext() {
    }

    /**
     * 获取默认接口上下文, 用于客户端使用
     */
    public static ApiContext getDefaultContext(String appid, int vercode, String vername) {
        ApiContext context = new ApiContext();
        context.appid = appid;
        context.vercode = vercode;
        context.vername = vername;

        return context;
    }

    /**
     * 获取默认接口上下文, 用于合作方使用
     */
    public static ApiContext getThridPartyContext(String thirdPartyId, int vercode, String vername) {
        ApiContext context = new ApiContext();
        context.thirdPartyId = thirdPartyId;
        context.vercode = vercode;
        context.vername = vername;

        return context;
    }

    public static void setContentRsaPubKey(String key) {
        contentRsaPubKey = key;
    }

    public static String getContentRsaPubKey() {
        return contentRsaPubKey;
    }

    public ApiContext setClientPK(String publicKey, String privateKey) {
        this.clientPK = new RsaHelper(publicKey, privateKey);
        return this;
    }

    RsaHelper getClientPK() {
        return clientPK;
    }

    public ApiContext setDeviceInfo(String deviceId, String deviceSecret, String deviceToken) {
        this.deviceId = deviceId;
        this.deviceSecret = deviceSecret;
        this.deviceToken = deviceToken;
        return this;
    }

    public ApiContext setUserInfo(long userid, String userToken, long tokenExpireTime) {
        this.userId = userid;
        this.userToken = userToken;
        this.tokenExpireTime = tokenExpireTime;
        return this;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getLocation() {
        return location;
    }

    public void setToken(String tk) {
        userToken = tk;
    }

    public String getToken() {
        return userToken;
    }

    public String getDeviceId() {
        return deviceId;
    }

    public long getUserId() {
        return userId;
    }

    public String getAppId() {
        return appid;
    }

    public void setTokenExpireTime(long time) {
        tokenExpireTime = time;
    }

    public long getTokenExpireTime() {
        return tokenExpireTime;
    }

    String getParameterString(BaseRequest<?>[] requests, String businessId) {
        int securityType = 0;
        final int len = requests.length;
        ParameterList params = new ParameterList(len * 2);
        StringBuilder methodNames = new StringBuilder();

        for (int i = 0; i < len; i++) {
            BaseRequest<?> req = requests[i];

            securityType = securityType | req.securityType;
            for (String key : req.params.keySet()) {
                if (CommonParameter.method.equals(key)) {
                    methodNames.append(req.params.get(key));
                    methodNames.append(",");
                } else {
                    if (len == 1) {
                        params.put(key, req.params.get(key));
                    } else {
                        params.put(i + "_" + key, req.params.get(key));
                    }
                }
            }
        }
        if (methodNames.length() > 0) {
            methodNames.setLength(methodNames.length() - 1);
        }
        params.put(CommonParameter.method, methodNames.toString());

        params.put(CommonParameter.format, "json");

        if ((securityType & SecurityType.Integrated) > 0) {
            if (thirdPartyId != null && !params.containsKey(CommonParameter.thirdPartyId)) {
                params.put(CommonParameter.thirdPartyId, thirdPartyId);
            }
        } else {
            if (appid != null && !params.containsKey(CommonParameter.applicationId)) {
                params.put(CommonParameter.applicationId, appid);
            }
        }

        if (location != null && !params.containsKey(CommonParameter.location)) {
            params.put(CommonParameter.location, location);
        }

        if (deviceId != null && !params.containsKey(CommonParameter.deviceId)) {
            params.put(CommonParameter.deviceId, deviceId);
        }

        if (userId > 0 && !params.containsKey(CommonParameter.userId)) {
            params.put(CommonParameter.userId, String.valueOf(userId));
        }

        if (vercode > 0 && !params.containsKey(CommonParameter.versionCode)) {
            params.put(CommonParameter.versionCode, "" + vercode);
        }

        if (vername != null && vername.length() > 0 && !params.containsKey(CommonParameter.versionName)) {
            params.put(CommonParameter.versionName, vername);
        }

        if (businessId != null) {
            params.put(CommonParameter.businessId, businessId);
        }

        params.put(CommonParameter.callId, "" + (long)(Math.random() * 10000000000000000L));

        return getParameterStringInternal(params, securityType);
    }

    public ServerResponse fillResponse(BaseRequest<?>[] requests, String data) {
        ServerResponse commonResponse = new ServerResponse();
        int errorCode = 0;
        if (data != null) {
            try {
                if (data.startsWith("{")) {
                    JsonObject json = new JsonParser().parse(data).getAsJsonObject();
                    JsonArray content = json.getAsJsonArray("content");
                    Api_Response resp = Api_Response.deserialize(json.getAsJsonObject("stat"));
                    if (resp != null) {
                        commonResponse.setSystime(resp.systime);
                        commonResponse.setCid(resp.cid);
                        commonResponse.setNotifications(resp.notificationList);
                        commonResponse.setReturnCode(resp.code);
                        commonResponse.setData(data);
                        if (resp.code == 0) {
                            if (resp.stateList != null && requests.length == resp.stateList.size()) {
                                List<Api_CallState> statList = resp.stateList;
                                int respSize = statList.size();
                                for (int i = 0; i < respSize; i++) {
                                    Api_CallState state = statList.get(i);
                                    BaseRequest<?> request = requests[i];
                                    request.systime = resp.systime;
                                    request.fillResponse(state.code, state.length, state.msg, content.get(i).getAsJsonObject());
                                    request.responseLoaded();
                                }
                                return commonResponse;
                            } else {
                                errorCode = ApiCode.UNKNOWN_ERROR;
                            }
                        } else {
                            errorCode = resp.code;
                        }

                        if (errorCode != 0) {
                            for (BaseRequest<?> request : requests) {
                                request.systime = resp.systime;
                                request.fillResponse(errorCode, -1, "common error", null);
                                request.responseLoaded();
                            }
                        }
                    }
                } else {
                    commonResponse.setSystime(System.currentTimeMillis());
                    commonResponse.setCid("raw string aid");
                    if (requests.length == 1) {
                        BaseRequest<?> request = requests[0];
                        request.systime = commonResponse.getSystime();
                        request.fillResponse(data);
                        request.responseLoaded();
                    }
                }
            } catch (Exception e) {
                logger.error("parse response error. cid=" + commonResponse.getCid(), e);
            }
        }
        return commonResponse;
    }

    public void fillError(BaseRequest<?> request, int code) {
        request.fillResponse(code, 0, "", null);
    }

    public void fillError(BaseRequest<?>[] requests, int code) {
        int size = requests.length;
        for (int i = 0; i < size; i++) {
            requests[i].fillResponse(code, 0, "", null);
        }
    }

    private void signRequest(ParameterList params, int securityType) {
        if (params.containsKey(CommonParameter.signature))
            return;
        try {
            if (securityType == 0) {
                params.put(CommonParameter.signatureMethod, "sha1");
            } else if ((securityType & SecurityType.Integrated) > 0) {
                params.put(CommonParameter.signatureMethod, "rsa");
            } else {
                params.put(CommonParameter.signatureMethod, "sha1");
            }

            StringBuilder sb = new StringBuilder(params.size() * 5);
            List<String> paramNames = new ArrayList<String>(params.keySet());
            Collections.sort(paramNames);
            for (String key : paramNames) {
                sb.append(key);
                sb.append('=');
                sb.append(params.get(key));
            }

            if (securityType == 0) {
                sb.append("net.pocrd");
                if (SDKConfig.isDebug) {
                    logger.info("before sig:" + sb.toString());
                }
                MessageDigest sha = MessageDigest.getInstance("sha1");
                params.put(CommonParameter.signature,
                        new String(Base64Util.encode(sha.digest(sb.toString().getBytes("utf-8")), Base64Util.NO_WRAP), "utf-8"));
            } else if ((securityType & SecurityType.Integrated) > 0) {
                if (clientPK == null) {
                    throw new RuntimeException("clientPK is null.");
                }
                if (SDKConfig.isDebug) {
                    logger.info("before sig:" + sb.toString());
                }
                synchronized (signLocker) {
                    params.put(CommonParameter.signature,
                            new String(Base64Util.encode(clientPK.sign(sb.toString().getBytes("utf-8")), Base64Util.NO_WRAP), "utf-8"));
                }
            } else {
                if (deviceToken == null) {
                    throw new RuntimeException("deviceToken is null.");
                }
                if (deviceSecret == null) {
                    throw new RuntimeException("deviceSecret is null.");
                }
                sb.append(deviceSecret);
                if (SDKConfig.isDebug) {
                    logger.info("before sig:" + sb.toString());
                }
                MessageDigest sha = MessageDigest.getInstance("sha1");
                params.put(CommonParameter.signature,
                        new String(Base64Util.encode(sha.digest(sb.toString().getBytes("utf-8")), Base64Util.NO_WRAP), "utf-8"));
            }
        } catch (Exception e) {
            throw new RuntimeException("sign url failed.", e);
        }
    }

    private String getParameterStringInternal(ParameterList params, int securityType) {
        if (userToken != null) {
            if (!params.containsKey(CommonParameter.token)) {
                params.put(CommonParameter.token, userToken);
            }
        } else {
            if (((securityType & SecurityType.UserLogin) > 0) | ((securityType & SecurityType.UserTrustedDevice) > 0)) {
                throw new LocalException(LocalException.TOKEN_MISSING);
            }
            if ((securityType & SecurityType.Integrated) > 0) {
                // donothing.
            } else if (securityType > 0) {
                if (deviceToken != null) {
                    if (!params.containsKey(CommonParameter.deviceToken)) {
                        params.put(CommonParameter.deviceToken, deviceToken);
                    }
                } else {
                    throw new LocalException(LocalException.TOKEN_MISSING);
                }
            }
        }

        signRequest(params, securityType);

        if (params.size() > 0) {
            try {
                StringBuilder sb = new StringBuilder(params.size() * 7);
                for (String key : params.keySet()) {
                    sb.append(key);
                    sb.append('=');
                    sb.append(URLEncoder.encode(params.get(key), "utf-8"));
                    sb.append('&');
                }
                sb.setLength(sb.length() - 1);
                return sb.toString();
            } catch (Exception e) {
                throw new RuntimeException("invalid request", e);
            }
        }
        throw new RuntimeException("invalid request");
    }
}
