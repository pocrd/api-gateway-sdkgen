// Auto Generated.  DO NOT EDIT!

#import "PoCApitest_TestAutowiredClientIP.h"
#import "PoCApi_StringResp.h"

/*
 * 服务端获取客户端IP测试
 * @author CodeGenerator@pocrd.net
 */
@implementation PoCApitest_TestAutowiredClientIP

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 */
- (id) init
{
    if (self = [super initWithMethodName:@"apitest.testAutowiredClientIP" securityType:SecurityType_None])
    {
          
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
  
