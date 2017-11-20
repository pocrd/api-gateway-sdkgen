// Auto Generated.  DO NOT EDIT!

#import "PoCApiCode.h"
#import "PoCBaseRequest.h"


/*
 * 测试RawString
 * 
 * @author guankaiqiang
 */
@interface PoCApitest_TestRawString : PoCBaseRequest
{

}

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param str str value
 */
- (id) initWithStr:(NSString *)str;

/*
 * 当前请求有可能的异常返回值
 */
- (NSInteger) handleError;

/*
 * 获取服务端返回的请求结果实体
 */
- (NSString *) result;

@end
