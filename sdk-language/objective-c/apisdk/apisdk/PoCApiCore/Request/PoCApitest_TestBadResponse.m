// Auto Generated.  DO NOT EDIT!

#import "PoCApitest_TestBadResponse.h"
#import "PoCApi_APITEST_BadResponse.h"

/*
 * 测试序列化异常
 * @author CodeGenerator@pocrd.net
 */
@implementation PoCApitest_TestBadResponse

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 */
- (id) init
{
    if (self = [super initWithMethodName:@"apitest.testBadResponse" securityType:SecurityType_None])
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
    }
    return _response.code;
}

/*
 * 获取服务端返回的请求结果实体
 */
- (PoCApi_APITEST_BadResponse *) result
{
    if (_response && ![_response isKindOfClass:[NSNull class]]) {
        return (PoCApi_APITEST_BadResponse *) _response.result;
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
      _response.result = [PoCApi_APITEST_BadResponse deserialize:json];
    }
    @catch (NSException *exception)
    {
        //PoCDebug(@"%@%@",exception.reason,@"PoCApi_APITEST_BadResponse deserialize failed");
    }
}
@end
  
