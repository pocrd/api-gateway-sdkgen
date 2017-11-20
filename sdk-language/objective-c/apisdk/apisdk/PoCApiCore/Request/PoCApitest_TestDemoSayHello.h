// Auto Generated.  DO NOT EDIT!

#import "PoCApiCode.h"
#import "PoCBaseRequest.h"
#import "PoCApi_APITEST_ComplexTestEntity.h"

/*
 * 测试转发到demoservice
 * 
 * @author rendong
 */
@interface PoCApitest_TestDemoSayHello : PoCBaseRequest
{

}

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param name say hello
 */
- (id) initWithName:(NSString *)name;

/*
 * 当前请求有可能的异常返回值
 */
- (NSInteger) handleError;

/*
 * 获取服务端返回的请求结果实体
 */
- (PoCApi_APITEST_ComplexTestEntity *) result;

@end
