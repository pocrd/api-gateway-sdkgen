// Auto Generated.  DO NOT EDIT!

#import "PoCApitest_TestThrowServiceException.h"
#import "PoCApi_StringResp.h"

/*
 * 测试test testThrowServiceException
 * @author CodeGenerator@pocrd.net
 */
@implementation PoCApitest_TestThrowServiceException

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 */
- (id) init
{
    if (self = [super initWithMethodName:@"apitest.testThrowServiceException" securityType:SecurityType_None])
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
        /* for测试 */
        case PoCApiCode_TEST_FOR_TEST123_123: {
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
  
