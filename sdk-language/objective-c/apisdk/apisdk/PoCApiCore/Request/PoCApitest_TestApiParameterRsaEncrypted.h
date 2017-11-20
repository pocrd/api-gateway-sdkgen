// Auto Generated.  DO NOT EDIT!

#import "PoCApiCode.h"
#import "PoCBaseRequest.h"
#import "PoCApi_StringResp.h"

/*
 * Api文档RsaEncrypted字段展示测试
 * 
 * @author sunji180
 */
@interface PoCApitest_TestApiParameterRsaEncrypted : PoCBaseRequest
{

}

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param rsaEncrypted 参数需用rsa方式加密
 * @param noRsaEncrypt 无加密
 */
- (id) initWithRsaEncrypted:(NSString *)rsaEncrypted noRsaEncrypt:(NSString *)noRsaEncrypt;

/*
 * 当前请求有可能的异常返回值
 */
- (NSInteger) handleError;

/*
 * 获取服务端返回的请求结果实体
 */
- (PoCApi_StringResp *) result;

@end
