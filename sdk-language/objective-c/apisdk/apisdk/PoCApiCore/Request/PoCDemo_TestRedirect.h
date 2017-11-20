// Auto Generated.  DO NOT EDIT!

#import "PoCApiCode.h"
#import "PoCBaseRequest.h"


/*
 * test redirect多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト
 * 
 * @author demo
 */
@interface PoCDemo_TestRedirect : PoCBaseRequest
{

}

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param something 输入参数1多语言测试.  A this is A多语言测试. , B this is B多语言测试. , C this is C多语言测试. , D this is D多语言测试. 
en-us:multi-language test  A multi-language test , B multi-language test , C multi-language test , D multi-language test 
ja-jp:多言語テスト A 多言語テスト, B 多言語テスト, C 多言語テスト, D 多言語テスト
 * @param another 输入参数2多语言测试.  A this is A多语言测试. , B this is B多语言测试. , C this is C多语言测试. , D this is D多语言测试. 
en-us:multi-language test  A multi-language test , B multi-language test , C multi-language test , D multi-language test 
ja-jp:多言語テスト A 多言語テスト, B 多言語テスト, C 多言語テスト, D 多言語テスト
 */
- (id) initWithSomething:(NSString *)something another:(NSString *)another;

/*
 * 当前请求有可能的异常返回值
 */
- (NSInteger) handleError;

/*
 * 获取服务端返回的请求结果实体
 */
- (NSString *) result;

@end
