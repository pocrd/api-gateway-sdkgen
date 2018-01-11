package net.pocrd.m.app.client;

import com.google.gson.JsonObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public abstract class BaseRequest<T> {
    protected static final Logger                  logger           = LoggerFactory.getLogger(BaseRequest.class);
    private                HashMap<String, String> verifyMsgs       = null;
    private                String                  methodName       = null;
    private                Runnable                responseListener = null;
    protected              ParameterList           params           = new ParameterList();
    protected              Response<T>             response         = new Response<T>();

    long systime      = 0;
    int  securityType = 0;

    public BaseRequest(String methodName, int securityType) {
        this.securityType = securityType;
        this.methodName = methodName;
        params.put(CommonParameter.method, methodName);
    }

    public final String getMethodName() {
        return methodName;
    }

    public final int getReturnCode() {
        return response.code;
    }

    public final String getReturnMessage() {
        return response.message;
    }

    public final long getSystime() {
        return systime;
    }

    public final int getSecurityType() {
        return securityType;
    }

    public final void putExt(String name, String value) {
        params.put(name, value);
    }

    /**
     * 用于记录访问日志
     */
    public final String getStringInfo() {
        if (params != null) {
            StringBuilder sb = new StringBuilder(params.size() * 10);
            for (String key : params.keySet()) {
                sb.append(key);
                sb.append("=");
                sb.append(params.get(key));
                sb.append("&");
            }
            return sb.toString();
        }
        return "";
    }

    abstract protected T getResult(JsonObject json);

    protected final void setVerifyError(String name, String msg) {
        if (verifyMsgs == null) {
            verifyMsgs = new HashMap<String, String>();
        }
        verifyMsgs.put(name, msg);
    }

    protected final void removeVerifyError(String name) {
        if (verifyMsgs != null) {
            verifyMsgs.remove(name);
        }
    }

    public final HashMap<String, String> getVerifyErrs() {
        return verifyMsgs;
    }

    final void fillResponse(int code, int length, String msg, JsonObject json) {
        response.code = code;
        response.length = length;
        response.message = msg;
        if (json != null && !json.isJsonNull()) {
            response.result = getResult(json);
        }
    }

    protected void fillResponse(String rawString) {
        // 只有返回RawString的子类才会给出如下实现,否则子类实现中也应什么都不做
        //        response.code = 0;
        //        response.length = rawString.length();
        //        response.message = "Success";
        //        response.result = (T)rawString;
    }

    /**
     * 为支持流式数据加载方式，当在一个http请求中发起多个api请求，且api请求返回值体积较大时，使用这种方式可以降低对内存的需求量
     *
     * @param listener
     */
    public void setResponseListener(Runnable listener) {
        responseListener = listener;
    }

    void responseLoaded() {
        if (responseListener != null) {
            responseListener.run();
        }
    }

    public final T getResponse() {
        return response.result;
    }

    /******************************************** 以下功能处理接口依赖 既A接口的输出作为B接口的输入 ********************************************/
    protected String[] getImportParams() {
        return null;
    }

    protected String[] getExportParams() {
        return null;
    }

    protected BaseRequest[] getDependencies() {
        return null;
    }

    public abstract static class AbstractDependencyBuilder {
        protected List<BaseRequest> dependencies;

        /**
         * 添加依赖的同时确保被添加的依赖请求中至少声明一个本请求所需引入的参数
         */
        protected void addDependency(String[] expectedParams, BaseRequest req) {
            if (dependencies == null) {
                dependencies = new ArrayList<BaseRequest>(3);
            }
            boolean found = false;
            String[] export = req.getExportParams();
            if (expectedParams != null && export != null) {
                label1:
                for (String p : expectedParams) {
                    for (String e : export) {
                        if (p.equals(e)) {
                            found = true;
                            break label1;
                        }
                    }
                }
            }
            if (!found) {
                throw new RuntimeException("Cannot found any expected params in " + req.methodName);
            }
            dependencies.add(req);
        }

        /**
         * 检测是否所有本请求需要引入的参数都已被提供
         */
        protected static void checkDependency(String[] requiredInjectionParams, BaseRequest req) {
            String[] expect = req.getImportParams();
            if (requiredInjectionParams != null) {
                for (String p : requiredInjectionParams) {
                    label1:
                    {
                        if (req.getDependencies() != null) {
                            for (BaseRequest r : req.getDependencies()) {
                                if (r.getExportParams() != null) {
                                    for (String ep : r.getExportParams()) {
                                        if (p.equals(ep))
                                            break label1;
                                    }
                                }
                            }
                        }
                        throw new RuntimeException("cannot find required injection parameter. request:" + req.methodName + " param:" + p);
                    }
                }
            }
        }
    }
}