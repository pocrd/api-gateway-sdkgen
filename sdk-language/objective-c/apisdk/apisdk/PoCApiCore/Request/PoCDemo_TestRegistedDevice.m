// Auto Generated.  DO NOT EDIT!

#import "PoCDemo_TestRegistedDevice.h"
#import "PoCApi_StringResp.h"

/*
 * demo registed device多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト
 * @author CodeGenerator@pocrd.net
 */
@implementation PoCDemo_TestRegistedDevice

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 */
- (id) init
{
    if (self = [super initWithMethodName:@"demo.testRegistedDevice" securityType:SecurityType_RegisteredDevice])
    {
          
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
        /* 有哪里不对. 
 en-us:multi-language test 
ja-jp:多言語テスト */
        case PoCApiCode_DEMO_SOMETHING_WRONG_1000100: {
            break;
        }
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
  
