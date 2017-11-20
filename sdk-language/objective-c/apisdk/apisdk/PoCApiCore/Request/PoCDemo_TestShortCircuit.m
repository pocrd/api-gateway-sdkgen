// Auto Generated.  DO NOT EDIT!

#import "PoCDemo_TestShortCircuit.h"
#import "PoCApi_DEMO_DemoEntity.h"

/*
 * short circuit test多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト
 * @author CodeGenerator@pocrd.net
 */
@implementation PoCDemo_TestShortCircuit

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param name say hello多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト
 */
- (id) initWithName:(NSString *)name
{
    if (self = [super initWithMethodName:@"demo.testShortCircuit" securityType:SecurityType_None])
    {
          
        [self setParameter:name withName:@"name"];
      
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
- (PoCApi_DEMO_DemoEntity *) result
{
    if (_response && ![_response isKindOfClass:[NSNull class]]) {
        return (PoCApi_DEMO_DemoEntity *) _response.result;
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
      _response.result = [PoCApi_DEMO_DemoEntity deserialize:json];
    }
    @catch (NSException *exception)
    {
        //PoCDebug(@"%@%@",exception.reason,@"PoCApi_DEMO_DemoEntity deserialize failed");
    }
}
@end
  
