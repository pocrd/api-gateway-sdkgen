// Auto Generated.  DO NOT EDIT!

#import "PoCApitest_TestWeiXin.h"


/*
 * 微信接口测试
 * @author CodeGenerator@pocrd.net
 */
@implementation PoCApitest_TestWeiXin

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 */
- (id) init
{
    if (self = [super initWithMethodName:@"apitest.testWeiXin" securityType:SecurityType_None])
    {
          
    }
    return self;
}

/*
 * 当前请求的非必填参数
 * @param msg test
 */
- (void) setMsg:(NSString *)msg
{
    [self setParameter:msg withName:@"msg"];
    
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
  
