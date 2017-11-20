// Auto Generated.  DO NOT EDIT!

#import "PoCApitest_TestApiParameterRsaEncrypted.h"
#import "PoCApi_StringResp.h"

/*
 * Api文档RsaEncrypted字段展示测试
 * @author CodeGenerator@pocrd.net
 */
@implementation PoCApitest_TestApiParameterRsaEncrypted

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param rsaEncrypted 参数需用rsa方式加密
 * @param noRsaEncrypt 无加密
 */
- (id) initWithRsaEncrypted:(NSString *)rsaEncrypted noRsaEncrypt:(NSString *)noRsaEncrypt
{
    if (self = [super initWithMethodName:@"apitest.testApiParameterRsaEncrypted" securityType:SecurityType_None])
    {
          
        [self setParameter:rsaEncrypted withName:@"rsaEncrypted"];
      
        [self setParameter:noRsaEncrypt withName:@"noRsaEncrypt"];
      
    }
    return self;
}

/*
 * 当前请求有可能的异常返回值
 */
- (NSInteger) handleError
{
    switch (_response.code)
    {
        /* 测试类未知错误 */
        case PoCApiCode_TEST_UNKNOW_ERROR_1: {
            break;
        }
    }
    return _response.code;
}

/*
 * 获取服务端返回的请求结果实体
 */
- (PoCApi_StringResp *) result
{
    if (_response && ![_response isKindOfClass:[NSNull class]]) {
        return (PoCApi_StringResp *) _response.result;
    }
    return nil;
}

/*
 * 将服务端返回的json数据反序列化为实体
 */
- (void) deserializeResponse:(NSDictionary *) json
{
    @try
    {
      _response.result = [PoCApi_StringResp deserialize:json];
    }
    @catch (NSException *exception)
    {
        //PoCDebug(@"%@%@",exception.reason,@"PoCApi_StringResp deserialize failed");
    }
}
@end
  
