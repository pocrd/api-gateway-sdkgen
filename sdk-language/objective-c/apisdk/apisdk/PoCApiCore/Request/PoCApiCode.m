#import "PoCApiCode.h"

@implementation PoCCodeConverter

+ (NSString *) description:(NSInteger) code
{
    switch (code)
    {
        case PoCApiCode_NO_ASSIGN: {
                      return @"未分配返回值";
              
        }
        case PoCApiCode_ROLE_DENIED: {
                      return @"当前用户权限不足";
              
        }
        case PoCApiCode_UPLOAD_FILE_NAME_ERROR: {
                      return @"上传文件名错误";
              
        }
        case PoCApiCode_UPLOAD_FILE_TOO_LARGE: {
                      return @"上传文件过大";
              
        }
        case PoCApiCode_USER_LOCKED: {
                      return @"用户被锁定";
              
        }
        case PoCApiCode_TOKEN_ERROR: {
                      return @"token错误";
              
        }
        case PoCApiCode_NO_ACTIVE_DEVICE: {
                      return @"不是激活设备(用户在其他地方登录)";
              
        }
        case PoCApiCode_NO_TRUSTED_DEVICE: {
                      return @"不是用户的受信设备";
              
        }
        case PoCApiCode_TOKEN_EXPIRE: {
                      return @"token已过期";
              
        }
        case PoCApiCode_APPID_NOT_EXIST: {
                      return @"应用id不存在";
              
        }
        case PoCApiCode_UPLINK_SMS_NOT_RECEIVED: {
                      return @"上行短信尚未收到";
              
        }
        case PoCApiCode_DYNAMIC_CODE_ERROR: {
                      return @"手机动态密码错误";
              
        }
        case PoCApiCode_MOBILE_NOT_REGIST: {
                      return @"手机号未绑定";
              
        }
        case PoCApiCode_API_UPGRADE: {
                      return @"接口已升级";
              
        }
        case PoCApiCode_REQUEST_PARSE_ERROR: {
                      return @"请求解析错误";
              
        }
        case PoCApiCode_ILLEGAL_MUTLI_INTEGRATED_API_ACCESS: {
                      return @"ILLEGAL_MUTLI_INTEGRATED_API_ACCESS";
              
        }
        case PoCApiCode_ILLEGAL_MUTLI_RAWSTRING_RT: {
                      return @"ILLEGAL_MUTLI_RAWSTRING_RT";
              
        }
        case PoCApiCode_ILLEGAL_MULTIAPI_ASSEMBLY: {
                      return @"非法的请求组合";
              
        }
        case PoCApiCode_SIGNATURE_ERROR: {
                      return @"签名错误";
              
        }
        case PoCApiCode_SECURITY_LEVEL_MISSMATCH: {
                      return @"SECURITY_LEVEL_MISSMATCH";
              
        }
        case PoCApiCode_RISK_MANAGER_DENIED: {
                      return @"RISK_MANAGER_DENIED";
              
        }
        case PoCApiCode_UNKNOW_ENCRYPTION_DENIED: {
                      return @"UNKNOW_ENCRYPTION_DENIED";
              
        }
        case PoCApiCode_UNKNOW_TOKEN_DENIED: {
                      return @"UNKNOW_TOKEN_DENIED";
              
        }
        case PoCApiCode_USER_CHECK_FAILED: {
                      return @"USER_CHECK_FAILED";
              
        }
        case PoCApiCode_ACCESS_DENIED: {
                      return @"访问被拒绝";
              
        }
        case PoCApiCode_PARAMETER_DECRYPT_ERROR: {
                      return @"PARAMETER_DECRYPT_ERROR";
              
        }
        case PoCApiCode_PARAMETER_ERROR: {
                      return @"参数错误";
              
        }
        case PoCApiCode_UNKNOWN_METHOD: {
                      return @"mt参数服务端无法识别";
              
        }
        case PoCApiCode_DUBBO_SERVICE_ERROR: {
                      return @"DUBBO_SERVICE_ERROR";
              
        }
        case PoCApiCode_DUBBO_SERVICE_TIMEOUT_ERROR: {
                      return @"DUBBO_SERVICE_TIMEOUT_ERROR";
              
        }
        case PoCApiCode_DUBBO_SERVICE_NOTFOUND_ERROR: {
                      return @"DUBBO_SERVICE_NOTFOUND_ERROR";
              
        }
        case PoCApiCode_SECURITY_SERVICE_ERROR: {
                      return @"SECURITY_SERVICE_ERROR";
              
        }
        case PoCApiCode_WEB_ACCESS_FAILED: {
                      return @"WEB_ACCESS_FAILED";
              
        }
        case PoCApiCode_FATAL_ERROR: {
                      return @"FATAL_ERROR";
              
        }
        case PoCApiCode_IP_DENIED: {
                      return @"IP_DENIED";
              
        }
        case PoCApiCode_SERIALIZE_FAILED: {
                      return @"SERIALIZE_FAILED";
              
        }
        case PoCApiCode_INTERNAL_SERVER_ERROR: {
                      return @"INTERNAL_SERVER_ERROR";
              
        }
        case PoCApiCode_UNKNOWN_ERROR: {
                      return @"服务端返回未知错误";
              
        }
        case PoCApiCode_SUCCESS: {
                      return @"成功";
              
        }
        case PoCApiCode_TEST_UNKNOW_ERROR_1: {
                      return @"测试类未知错误";
              
        }
        case PoCApiCode_TEST_FOR_TEST123_123: {
                      return @"for测试";
              
        }
        case PoCApiCode_TEST_FOR_TEST456_456: {
                      return @"for测试";
              
        }
        case PoCApiCode_TEST_FOR_TEST789_789: {
                      return @"for测试";
              
        }
        case PoCApiCode_DEMO_USER_NOT_FOUND_1000001: {
                      return @"用户找不到. ";
              
        }
        case PoCApiCode_DEMO_SOMETHING_WRONG_1000100: {
                      return @"有哪里不对. ";
              
        }
    }
    return nil;
}

@end
