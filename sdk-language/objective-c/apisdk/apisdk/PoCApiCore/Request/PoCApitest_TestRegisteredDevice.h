// Auto Generated.  DO NOT EDIT!

#import "PoCApiCode.h"
#import "PoCBaseRequest.h"
#import "PoCApi_NumberResp.h"

/*
 * testSecurityTypeRegisteredDevice
 * 
 * @author guangkaiqiang521
 */
@interface PoCApitest_TestRegisteredDevice : PoCBaseRequest
{

}

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param intParam int param
 */
- (id) initWithIntParam:(NSInteger)intParam;

/*
 * 当前请求有可能的异常返回值
 */
- (NSInteger) handleError;

/*
 * 获取服务端返回的请求结果实体
 */
- (PoCApi_NumberResp *) result;

@end
