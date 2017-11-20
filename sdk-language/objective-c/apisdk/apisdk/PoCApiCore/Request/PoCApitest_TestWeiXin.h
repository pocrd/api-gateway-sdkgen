// Auto Generated.  DO NOT EDIT!

#import "PoCApiCode.h"
#import "PoCBaseRequest.h"


/*
 * 微信接口测试
 * 
 * @author guankaiqiang
 */
@interface PoCApitest_TestWeiXin : PoCBaseRequest
{

}

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 */
- (id) init;

/*
 * 当前请求的非必填参数
 * @param msg test
 */
- (void) setMsg:(NSString *)msg;
    
/*
 * 当前请求有可能的异常返回值
 */
- (NSInteger) handleError;

/*
 * 获取服务端返回的请求结果实体
 */
- (NSString *) result;

@end
