// Auto Generated.  DO NOT EDIT!

#import "PoCApitest_TestUserLogin.h"
#import "PoCApi_NumberResp.h"

/*
 * testSecurityTypeUserLogin
 * @author CodeGenerator@pocrd.net
 */
@implementation PoCApitest_TestUserLogin

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param intParam int param
 */
- (id) initWithIntParam:(NSInteger)intParam
{
    if (self = [super initWithMethodName:@"apitest.testUserLogin" securityType:SecurityType_UserLogin])
    {
          
        [self setParameter:[[NSNumber numberWithInteger:intParam] stringValue] withName:@"intParam"];
      
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
- (PoCApi_NumberResp *) result
{
    if (_response && ![_response isKindOfClass:[NSNull class]]) {
        return (PoCApi_NumberResp *) _response.result;
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
      _response.result = [PoCApi_NumberResp deserialize:json];
    }
    @catch (NSException *exception)
    {
        //PoCDebug(@"%@%@",exception.reason,@"PoCApi_NumberResp deserialize failed");
    }
}
@end
  
