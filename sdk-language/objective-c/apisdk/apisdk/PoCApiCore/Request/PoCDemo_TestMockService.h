// Auto Generated.  DO NOT EDIT!

#import "PoCApiCode.h"
#import "PoCBaseRequest.h"
#import "PoCApi_DEMO_DemoEntity.h"

/*
 * 测试模拟服务. 
 en-us:mock service test. 
 ja-jp:モックサービス・テスト
 * 
 * @author demo
 */
@interface PoCDemo_TestMockService : PoCBaseRequest
{

}

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param name say hello多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト
 */
- (id) initWithName:(NSString *)name;

/*
 * 当前请求有可能的异常返回值
 */
- (NSInteger) handleError;

/*
 * 获取服务端返回的请求结果实体
 */
- (PoCApi_DEMO_DemoEntity *) result;

@end
