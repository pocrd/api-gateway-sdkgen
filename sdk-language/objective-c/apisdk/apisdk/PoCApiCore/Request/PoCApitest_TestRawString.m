// Auto Generated.  DO NOT EDIT!

#import "PoCApitest_TestRawString.h"


/*
 * 测试RawString
 * @author CodeGenerator@pocrd.net
 */
@implementation PoCApitest_TestRawString

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param str str value
 */
- (id) initWithStr:(NSString *)str
{
    if (self = [super initWithMethodName:@"apitest.testRawString" securityType:SecurityType_None])
    {
          
        [self setParameter:str withName:@"str"];
      
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
- (NSString *) result
{
    if (_response && ![_response isKindOfClass:[NSNull class]]) {
        return (NSString *) _response.result;
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
      _response.result = [json objectForKey:@"raw_string"];
    }
    @catch (NSException *exception)
    {
        //PoCDebug(@"%@%@",exception.reason,@"NSString deserialize failed");
    }
}
@end
  
