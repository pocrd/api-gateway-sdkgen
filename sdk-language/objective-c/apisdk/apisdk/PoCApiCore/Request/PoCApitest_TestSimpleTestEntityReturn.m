// Auto Generated.  DO NOT EDIT!

#import "PoCApitest_TestSimpleTestEntityReturn.h"
#import "PoCApi_APITEST_SimpleTestEntity.h"

/*
 * testSimpleTestEntityReturn
 * @author CodeGenerator@pocrd.net
 */
@implementation PoCApitest_TestSimpleTestEntityReturn

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param strParam string param
 */
- (id) initWithStrParam:(NSString *)strParam
{
    if (self = [super initWithMethodName:@"apitest.testSimpleTestEntityReturn" securityType:SecurityType_None])
    {
          
        [self setParameter:strParam withName:@"strParam"];
      
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
- (PoCApi_APITEST_SimpleTestEntity *) result
{
    if (_response && ![_response isKindOfClass:[NSNull class]]) {
        return (PoCApi_APITEST_SimpleTestEntity *) _response.result;
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
      _response.result = [PoCApi_APITEST_SimpleTestEntity deserialize:json];
    }
    @catch (NSException *exception)
    {
        //PoCDebug(@"%@%@",exception.reason,@"PoCApi_APITEST_SimpleTestEntity deserialize failed");
    }
}
@end
  
