// Auto Generated.  DO NOT EDIT!

#import "PoCApitest_TestDemoSayHello.h"
#import "PoCApi_APITEST_ComplexTestEntity.h"

/*
 * 测试转发到demoservice
 * @author CodeGenerator@pocrd.net
 */
@implementation PoCApitest_TestDemoSayHello

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param name say hello
 */
- (id) initWithName:(NSString *)name
{
    if (self = [super initWithMethodName:@"apitest.testDemoSayHello" securityType:SecurityType_None])
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
        /* for测试 */
        case PoCApiCode_TEST_FOR_TEST123_123: {
            break;
        }
        /* for测试 */
        case PoCApiCode_TEST_FOR_TEST456_456: {
            break;
        }
        /* for测试 */
        case PoCApiCode_TEST_FOR_TEST789_789: {
            break;
        }
    }
    return _response.code;
}

/*
 * 获取服务端返回的请求结果实体
 */
- (PoCApi_APITEST_ComplexTestEntity *) result
{
    if (_response && ![_response isKindOfClass:[NSNull class]]) {
        return (PoCApi_APITEST_ComplexTestEntity *) _response.result;
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
      _response.result = [PoCApi_APITEST_ComplexTestEntity deserialize:json];
    }
    @catch (NSException *exception)
    {
        //PoCDebug(@"%@%@",exception.reason,@"PoCApi_APITEST_ComplexTestEntity deserialize failed");
    }
}
@end
  
