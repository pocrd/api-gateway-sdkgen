// Auto Generated.  DO NOT EDIT!

#import "PoCApiCode.h"
#import "PoCBaseRequest.h"
#import "PoCApi_APITEST_SimpleTestEntity.h"

/*
 * 结构化入参测试
 * 
 * @author guankaiqiang
 */
@interface PoCApitest_TestStructInput : PoCBaseRequest
{

}

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param simpleTestEntity SimpleTestEntity结构化入参
 */
- (id) initWithSimpleTestEntity:(PoCApi_APITEST_SimpleTestEntity *)simpleTestEntity;

/*
 * 当前请求有可能的异常返回值
 */
- (NSInteger) handleError;

/*
 * 获取服务端返回的请求结果实体
 */
- (PoCApi_APITEST_SimpleTestEntity *) result;

@end
