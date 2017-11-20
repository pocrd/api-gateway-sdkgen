// Auto Generated.  DO NOT EDIT!

#import "PoCDemo_GetResByThirdPartyId.h"
#import "PoCApi_StringResp.h"

/*
 * demo getResByThirdPartyId多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト
 * @author CodeGenerator@pocrd.net
 */
@implementation PoCDemo_GetResByThirdPartyId

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param in 输入参数多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト
 */
- (id) initWithIn:(NSString *)in
{
    if (self = [super initWithMethodName:@"demo.getResByThirdPartyId" securityType:SecurityType_Integrated])
    {
          
        [self setParameter:in withName:@"in"];
      
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
  
