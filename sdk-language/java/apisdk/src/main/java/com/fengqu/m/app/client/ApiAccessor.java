package com.fengqu.m.app.client;

import com.fengqu.m.app.client.api.request.ApiCode;
import okhttp3.*;
import okhttp3.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * 用于访问接口的功能封装
 */
public class ApiAccessor {
    private static final Logger    logger     = LoggerFactory.getLogger(ApiAccessor.class);
    private static final MediaType MEDIA_TYPE = MediaType.parse("application/x-www-form-urlencoded;charset=UTF-8");
    private OkHttpClient client;
    private ApiContext   apiContext;
    private HttpUrl      url;

    public ApiAccessor(ApiContext context, int connTimeout, int soTimeout, String agent, String apiUrl) {
        apiContext = context;
        url = HttpUrl.parse(apiUrl);

        Cookie.Builder cb = new Cookie.Builder();
        final List<Cookie> cookies = new ArrayList<Cookie>(1);
        cookies.add(cb.name("http.useragent").value(agent).domain(url.host()).build());

        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.cookieJar(new CookieJar() {
            public void saveFromResponse(HttpUrl httpUrl, List<Cookie> list) {
                // do nothing. ignore all cookies.
            }

            public List<Cookie> loadForRequest(HttpUrl httpUrl) {
                return cookies;
            }
        });
        builder.connectTimeout(connTimeout, TimeUnit.MILLISECONDS);
        builder.readTimeout(soTimeout, TimeUnit.MILLISECONDS);
        client = builder.build();
    }

    public ServerResponse fillApiResponse(BaseRequest<?> request) {
        return fillApiResponse(new BaseRequest<?>[] { request }, null);
    }

    public ServerResponse fillApiResponse(BaseRequest<?> request, String businessId) {
        return fillApiResponse(new BaseRequest<?>[] { request }, businessId);
    }

    public ServerResponse fillApiResponse(BaseRequest<?>[] requests) {
        return fillApiResponse(requests, null);
    }

    public ServerResponse fillApiResponse(BaseRequest<?>[] requests, String businessId) {
        ServerResponse commonResponse = null;
        if (requests == null || requests.length == 0) {
            return commonResponse;
        }
        try {
            String params = apiContext.getParameterString(requests, businessId);
            RequestBody body = RequestBody.create(MEDIA_TYPE, params);
            Request.Builder rb = new Request.Builder().url(url).addHeader("Connection", "keep-alive").post(body);
            if (SDKConfig.isDebug) {
                String link = url.toString() + "?" + params;
                logger.info("request to :" + link);

                String dubboVersion = System.getProperty("debug.dubbo.version");
                if (dubboVersion != null && dubboVersion.length() > 0) {
                    rb.addHeader("DUBBO-VERSION", dubboVersion);
                }
                String dubboUrl = System.getProperty("debug.dubbo.url");
                if (dubboUrl != null && dubboUrl.length() > 0) {
                    rb.addHeader("DUBBO-SERVICE-URL", dubboUrl);
                }
            }
            Request request = rb.build();
            Response response = client.newCall(request).execute();
            String respBody = response.body().string();
            if (SDKConfig.isDebug) {
                logger.info("response code:" + response.code() + " body: " + respBody);
            }
            if (response.code() != 200) {
                String link = url.toString() + "?" + params;
                logger.error("Apiaccess failed. httpcode:" + response.code() + "  url=" + link);
                throw new LocalException(ApiCode.UNKNOWN_ERROR);
            }
            commonResponse = apiContext.fillResponse(requests, respBody);
        } catch (LocalException ae) {
            LocalException localException = new LocalException(ae.getMessage(), ae.getCode(), ae);
            localException.setErrorData(ae.getErrorData());
            throw localException;
        } catch (Throwable t) {
            logger.error("Api access failed.", t);
            throw new LocalException("Api access failed.", LocalException.UNKNOWN, t);
        }
        return commonResponse;
    }
}
