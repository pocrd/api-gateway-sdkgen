// Auto Generated.  DO NOT EDIT!

#import "PoCApitest_TestRsaEncrypt.h"
#import "PoCApi_StringResp.h"

/*
 * 测试rsa加解密
 * @author CodeGenerator@pocrd.net
 */
@implementation PoCApitest_TestRsaEncrypt

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param param1 param1
 * @param param3 param3
 * @param param5 param5
 * @param param7 param7
 */
- (id) initWithParam1:(NSString *)param1 param3:(PoCApi_APITEST_SimpleTestEntity *)param3 param5:(NSString *)param5 param7:(NSArray *)param7
{
    if (self = [super initWithMethodName:@"apitest.testRsaEncrypt" securityType:SecurityType_None])
    {
          
        [self setParameter:param1 withName:@"param1"];
      
        [self setParameter:param3 == nil ? @"" : [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:[param3 serialize] options:0 error:nil] encoding:NSUTF8StringEncoding] withName:@"param3"];
      
        [self setParameter:param5 withName:@"param5"];
      
        [self setParameter:param7 == nil ? @"" : [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:param7 options:0 error:nil] encoding:NSUTF8StringEncoding] withName:@"param7"];
      
    }
    return self;
}

/*
 * 当前请求的非必填参数
 * @param param2 param2
 */
- (void) setParam2:(NSString *)param2
{
    [self setParameter:param2 withName:@"param2"];
    
}
    
/*
 * 当前请求的非必填参数
 * @param param4 param4
 */
- (void) setParam4:(PoCApi_APITEST_SimpleTestEntity *)param4
{
    [self setParameter:param4 == nil ? @"" : [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:[param4 serialize] options:0 error:nil] encoding:NSUTF8StringEncoding] withName:@"param4"];
    
}
    
/*
 * 当前请求的非必填参数
 * @param param6 param6
 */
- (void) setParam6:(NSString *)param6
{
    [self setParameter:param6 withName:@"param6"];
    
}
    
/*
 * 当前请求的非必填参数
 * @param param8 param8
 */
- (void) setParam8:(NSArray *)param8
{
    [self setParameter:param8 == nil ? @"" : [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:param8 options:0 error:nil] encoding:NSUTF8StringEncoding] withName:@"param8"];
    
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
  
