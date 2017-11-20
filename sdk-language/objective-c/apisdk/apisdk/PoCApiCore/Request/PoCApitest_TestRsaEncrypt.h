// Auto Generated.  DO NOT EDIT!

#import "PoCApiCode.h"
#import "PoCBaseRequest.h"
#import "PoCApi_StringResp.h"
#import "PoCApi_APITEST_SimpleTestEntity.h"

/*
 * 测试rsa加解密
 * 
 * @author guankaiqiang
 */
@interface PoCApitest_TestRsaEncrypt : PoCBaseRequest
{

}

/*
 * 当前请求的构造函数，以下参数为该请求的必填参数
 * @param param1 param1
 * @param param3 param3
 * @param param5 param5
 * @param param7 param7
 */
- (id) initWithParam1:(NSString *)param1 param3:(PoCApi_APITEST_SimpleTestEntity *)param3 param5:(NSString *)param5 param7:(NSArray *)param7;

/*
 * 当前请求的非必填参数
 * @param param2 param2
 */
- (void) setParam2:(NSString *)param2;
    
/*
 * 当前请求的非必填参数
 * @param param4 param4
 */
- (void) setParam4:(PoCApi_APITEST_SimpleTestEntity *)param4;
    
/*
 * 当前请求的非必填参数
 * @param param6 param6
 */
- (void) setParam6:(NSString *)param6;
    
/*
 * 当前请求的非必填参数
 * @param param8 param8
 */
- (void) setParam8:(NSArray *)param8;
    
/*
 * 当前请求有可能的异常返回值
 */
- (NSInteger) handleError;

/*
 * 获取服务端返回的请求结果实体
 */
- (PoCApi_StringResp *) result;

@end
