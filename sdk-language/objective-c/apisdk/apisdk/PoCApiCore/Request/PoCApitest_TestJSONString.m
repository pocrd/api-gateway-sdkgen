// Auto Generated.  DO NOT EDIT!

#import "PoCApitest_TestJSONString.h"
#import "PoCApi_JSONString.h"

/*
 * 测试jsonString
 * @author CodeGenerator@pocrd.net
 */
@implementation PoCApitest_TestJSONString

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param param param
 */
- (id) initWithParam:(NSString *)param
{
    if (self = [super initWithMethodName:@"apitest.testJSONString" securityType:SecurityType_None])
    {
          
        [self setParameter:param withName:@"param"];
      
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
- (PoCApi_JSONString *) result
{
    if (_response && ![_response isKindOfClass:[NSNull class]]) {
        return (PoCApi_JSONString *) _response.result;
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
      _response.result = [PoCApi_JSONString deserialize:json];
    }
    @catch (NSException *exception)
    {
        //PoCDebug(@"%@%@",exception.reason,@"PoCApi_JSONString deserialize failed");
    }
}
@end
  
