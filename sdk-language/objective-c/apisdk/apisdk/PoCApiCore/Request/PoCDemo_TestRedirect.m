// Auto Generated.  DO NOT EDIT!

#import "PoCDemo_TestRedirect.h"


/*
 * test redirect多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト
 * @author CodeGenerator@pocrd.net
 */
@implementation PoCDemo_TestRedirect

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param something 输入参数1多语言测试.  A this is A多语言测试. , B this is B多语言测试. , C this is C多语言测试. , D this is D多语言测试. 
en-us:multi-language test  A multi-language test , B multi-language test , C multi-language test , D multi-language test 
ja-jp:多言語テスト A 多言語テスト, B 多言語テスト, C 多言語テスト, D 多言語テスト
 * @param another 输入参数2多语言测试.  A this is A多语言测试. , B this is B多语言测试. , C this is C多语言测试. , D this is D多语言测试. 
en-us:multi-language test  A multi-language test , B multi-language test , C multi-language test , D multi-language test 
ja-jp:多言語テスト A 多言語テスト, B 多言語テスト, C 多言語テスト, D 多言語テスト
 */
- (id) initWithSomething:(NSString *)something another:(NSString *)another
{
    if (self = [super initWithMethodName:@"demo.testRedirect" securityType:SecurityType_None])
    {
          
        [self setParameter:something withName:@"something"];
      
        [self setParameter:another withName:@"another"];
      
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
  
