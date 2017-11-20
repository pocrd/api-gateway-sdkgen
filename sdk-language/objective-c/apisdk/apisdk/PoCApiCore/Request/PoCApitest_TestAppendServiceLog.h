// Auto Generated.  DO NOT EDIT!

#import "PoCApiCode.h"
#import "PoCBaseRequest.h"
#import "PoCApi_StringResp.h"

/*
 * 测试appendServiceLog
 * 
 * @author guankaiqiang
 */
@interface PoCApitest_TestAppendServiceLog : PoCBaseRequest
{

}

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param param param
 */
- (id) initWithParam:(NSString *)param;

/*
 * 当前请求有可能的异常返回值
 */
- (NSInteger) handleError;

/*
 * 获取服务端返回的请求结果实体
 */
- (PoCApi_StringResp *) result;

@end
