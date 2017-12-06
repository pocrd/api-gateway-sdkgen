// Auto Generated.  DO NOT EDIT!

package net.pocrd.m.app.client.api.request;

import com.google.gson.JsonObject;
import net.pocrd.m.app.client.ApiContext;
import net.pocrd.m.app.client.BaseRequest;
import net.pocrd.m.app.client.LocalException;
import net.pocrd.m.app.client.SecurityType;
import net.pocrd.m.app.client.api.resp.Api_StringResp;
import net.pocrd.m.app.client.util.Base64Util;
import net.pocrd.m.app.client.util.RsaHelper;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Api文档RsaEncrypted字段展示测试
 *
 * @author sunji180
 */
public class Apitest_TestApiParameterRsaEncrypted extends BaseRequest<Api_StringResp> {

    private RsaHelper rsaHelper = null;

    /**
     * 当前请求的构造函数，以下参数为该请求的必填参数
     *
     * @param rsaEncrypted 参数需用rsa方式加密
     * @param noRsaEncrypt 无加密
     */
    public Apitest_TestApiParameterRsaEncrypted(String rsaEncrypted, String noRsaEncrypt) {
        super("apitest.testApiParameterRsaEncrypted", SecurityType.None);

        try {
            if (rsaHelper == null) {
                rsaHelper = new RsaHelper(ApiContext.getContentRsaPubKey());
            }
            params.put("rsaEncrypted", Base64Util.encodeToString(rsaHelper.encrypt(rsaEncrypted.getBytes("UTF-8"))));

            params.put("noRsaEncrypt", noRsaEncrypt);
        } catch (Exception e) {
            throw new LocalException("SERIALIZE_ERROR", LocalException.SERIALIZE_ERROR, e);
        }
    }

    /**
     * 私有的默认构造函数，请勿使用
     */
    private Apitest_TestApiParameterRsaEncrypted() {
        super("apitest.testApiParameterRsaEncrypted", SecurityType.None);
    }

    /**
     * 当前请求有可能的异常返回值
     */
    public int handleError() {
        switch (response.code) {
            /* 测试类未知错误 */
            case ApiCode.TEST_UNKNOW_ERROR_1: {
                break;
            }
        }
        return response.code;
    }

    /**
     * 不要直接调用这个方法，API使用者应该访问基类的getResponse()获取接口的返回值
     */
    @Override
    protected Api_StringResp getResult(JsonObject json) {
        try {
            return Api_StringResp.deserialize(json);
        } catch (Exception e) {
            logger.error("Api_StringResp deserialize failed.", e);
        }
        return null;
    }

    private static final String[]    importParams = new String[] { "products.productids" };
    private static final Set<String> exportParams = new HashSet<String>(Arrays.asList(new String[] { "xxx" }));

    protected String[] getImportParams() {
        return importParams;
    }

    protected Set<String> getExportParams() {
        return exportParams;
    }

    private List<BaseRequest> dependencies;

    protected BaseRequest[] getDependencies() {
        return dependencies == null ? null : dependencies.toArray(new BaseRequest[dependencies.size()]);
    }

    /**
     * 该接口被设计为可以接受另一个接口的隐式返回值${1}作为参数${2}
     */
    public static class DependencyBuilder extends AbstractDependencyBuilder {
        private DependencyBuilder() {
        }

        public static AbstractDependencyBuilder create() {
            return new DependencyBuilder();
        }

        public DependencyBuilder depends(BaseRequest req) {
            addDependency(Apitest_TestApiParameterRsaEncrypted.importParams, req);
            return this;
        }

        public Apitest_TestApiParameterRsaEncrypted build(String rsaEncrypted, String noRsaEncrypt) {
            Apitest_TestApiParameterRsaEncrypted instance = new Apitest_TestApiParameterRsaEncrypted(rsaEncrypted, noRsaEncrypt);
            instance.dependencies = dependencies;
            checkDependency(instance);
            return instance;
        }
    }
}
  