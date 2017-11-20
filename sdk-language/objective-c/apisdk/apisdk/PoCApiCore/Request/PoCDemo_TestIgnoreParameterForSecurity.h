// Auto Generated.  DO NOT EDIT!

#import "PoCApiCode.h"
#import "PoCBaseRequest.h"
#import "PoCApi_StringResp.h"

/*
 * test redirect多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト
 * 
 * @author demo
 */
@interface PoCDemo_TestIgnoreParameterForSecurity : PoCBaseRequest
{

}

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param in 输入参数多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト
 */
- (id) initWithIn:(NSString *)in;

/*
 * 当前请求有可能的异常返回值
 */
- (NSInteger) handleError;

/*
 * 获取服务端返回的请求结果实体
 */
- (PoCApi_StringResp *) result;

@end
