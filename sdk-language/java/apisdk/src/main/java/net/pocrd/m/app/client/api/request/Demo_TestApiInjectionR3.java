// Auto Generated.  DO NOT EDIT!

package net.pocrd.m.app.client.api.request;

import com.google.gson.*;

import net.pocrd.m.app.client.LocalException;
import net.pocrd.m.app.client.BaseRequest;
import net.pocrd.m.app.client.SecurityType;
import net.pocrd.m.app.client.api.resp.*;

/**
 * 可以依赖与R5的隐式返回值, 并提供R1所需的一个隐式参数
 * 
 * @author demo
 *
 */
public class Demo_TestApiInjectionR3 extends BaseRequest<Api_DEMO_ComplexTestEntity> {
    
    /**
     * 当前请求的构造函数，以下参数为该请求的必填参数
     * @param name 名称
     */
    public Demo_TestApiInjectionR3(String name) {
        super("demo.testApiInjectionR3", SecurityType.None);

        try {
            params.put("name", name);
        } catch(Exception e) {
            throw new LocalException("SERIALIZE_ERROR", LocalException.SERIALIZE_ERROR, e);
        }
    }
    
    /**
     * 私有的默认构造函数，请勿使用
     */
    private Demo_TestApiInjectionR3() {
        super("demo.testApiInjectionR3", SecurityType.None);
    }
    
    /**
     * 当前请求有可能的异常返回值
     */
    public int handleError() {
        switch (response.code) {
        }
        return response.code;
    }

    /**
     * 不要直接调用这个方法，API使用者应该访问基类的getResponse()获取接口的返回值
     */
    @Override
    protected Api_DEMO_ComplexTestEntity getResult(JsonObject json) {
        try {
            return Api_DEMO_ComplexTestEntity.deserialize(json);
        } catch (Exception e) {
            logger.error("Api_DEMO_ComplexTestEntity deserialize failed.", e);
        }
        return null;
    }
    
    /******************************************** 以下功能处理接口依赖 既A接口的输出作为B接口的输入 ********************************************/
    
    private static final String[] exportParams = new String[] { "product.productIds" };

    protected String[] getExportParams() {
        return exportParams;
    }
    
    private static final String[] importParams = new String[] { "rma.rmaIds" };

    protected String[] getImportParams() {
        return importParams;
    }

    private BaseRequest[] dependencies = null;

    protected BaseRequest[] getDependencies() {
        return dependencies;
    }

    public static DependencyBuilder createDependencyBuilder() {
        return new DependencyBuilder();
    }

    public static class DependencyBuilder extends AbstractDependencyBuilder {

        private DependencyBuilder() {

        }

        public DependencyBuilder depends(BaseRequest dependency) {
            addDependency(Demo_TestApiInjectionR3.importParams, dependency);
            return this;
        }

        public Demo_TestApiInjectionR3 build(String name) {
            Demo_TestApiInjectionR3 request = new Demo_TestApiInjectionR3(name);
            request.dependencies = new BaseRequest[dependencies.size()];
            dependencies.toArray(request.dependencies);
            checkDependency(new String[] {  }, request);
            return request;
        }
    }
    
}
  