// Auto Generated.  DO NOT EDIT!

#import "PoCApitest_TestDesignedErrorCode.h"
#import "PoCApi_BoolResp.h"

/*
 * 测试errorcode
 * @author CodeGenerator@pocrd.net
 */
@implementation PoCApitest_TestDesignedErrorCode

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 */
- (id) init
{
    if (self = [super initWithMethodName:@"apitest.testDesignedErrorCode" securityType:SecurityType_None])
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
- (PoCApi_BoolResp *) result
{
    if (_response && ![_response isKindOfClass:[NSNull class]]) {
        return (PoCApi_BoolResp *) _response.result;
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
      _response.result = [PoCApi_BoolResp deserialize:json];
    }
    @catch (NSException *exception)
    {
        //PoCDebug(@"%@%@",exception.reason,@"PoCApi_BoolResp deserialize failed");
    }
}
@end
  
