// Auto Generated.  DO NOT EDIT!

#import "PoCApitest_TestStructInput.h"
#import "PoCApi_APITEST_SimpleTestEntity.h"

/*
 * 结构化入参测试
 * @author CodeGenerator@pocrd.net
 */
@implementation PoCApitest_TestStructInput

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param simpleTestEntity SimpleTestEntity结构化入参
 */
- (id) initWithSimpleTestEntity:(PoCApi_APITEST_SimpleTestEntity *)simpleTestEntity
{
    if (self = [super initWithMethodName:@"apitest.testStructInput" securityType:SecurityType_None])
    {
          
        [self setParameter:simpleTestEntity == nil ? @"" : [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:[simpleTestEntity serialize] options:0 error:nil] encoding:NSUTF8StringEncoding] withName:@"simpleTestEntity"];
      
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
        /* 测试类未知错误 */
        case PoCApiCode_TEST_UNKNOW_ERROR_1: {
            break;
        }
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
  
