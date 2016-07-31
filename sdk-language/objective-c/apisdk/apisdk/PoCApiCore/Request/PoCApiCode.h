// Auto Generated.  DO NOT EDIT!

/*
 * 本类定义了接口有可能的返回值集合, 其中0为成功, 负数值为所有接口都有可能返回的通用code, 正数值是接口相关的code(请参见接口文档).
 */
typedef enum {
    
    /* 未分配返回值 */
    PoCApiCode_NO_ASSIGN = -2147483648,
    
    /* 上传文件名错误 */
    PoCApiCode_UPLOAD_FILE_NAME_ERROR = -390,
    
    /* 上传文件过大 */
    PoCApiCode_UPLOAD_FILE_TOO_LARGE = -380,
    
    /* 用户被锁定 */
    PoCApiCode_USER_LOCKED = -370,
    
    /* token错误 */
    PoCApiCode_TOKEN_ERROR = -360,
    
    /* 不是激活设备(用户在其他地方登录) */
    PoCApiCode_NO_ACTIVE_DEVICE = -340,
    
    /* 不是用户的受信设备 */
    PoCApiCode_NO_TRUSTED_DEVICE = -320,
    
    /* token已过期 */
    PoCApiCode_TOKEN_EXPIRE = -300,
    
    /* 应用id不存在 */
    PoCApiCode_APPID_NOT_EXIST = -280,
    
    /* 上行短信尚未收到 */
    PoCApiCode_UPLINK_SMS_NOT_RECEIVED = -270,
    
    /* 手机动态密码错误 */
    PoCApiCode_DYNAMIC_CODE_ERROR = -260,
    
    /* 手机号未绑定 */
    PoCApiCode_MOBILE_NOT_REGIST = -250,
    
    /* 接口已升级 */
    PoCApiCode_API_UPGRADE = -220,
    
    /* 请求解析错误 */
    PoCApiCode_REQUEST_PARSE_ERROR = -200,
    
    /* ILLEGAL_MUTLI_INTEGRATED_API_ACCESS */
    PoCApiCode_ILLEGAL_MUTLI_INTEGRATED_API_ACCESS = -192,
    
    /* ILLEGAL_MUTLI_RAWSTRING_RT */
    PoCApiCode_ILLEGAL_MUTLI_RAWSTRING_RT = -191,
    
    /* 非法的请求组合 */
    PoCApiCode_ILLEGAL_MULTIAPI_ASSEMBLY = -190,
    
    /* 签名错误 */
    PoCApiCode_SIGNATURE_ERROR = -180,
    
    /* RISK_MANAGER_DENIED */
    PoCApiCode_RISK_MANAGER_DENIED = -166,
    
    /* UNKNOW_ENCRYPTION_DENIED */
    PoCApiCode_UNKNOW_ENCRYPTION_DENIED = -165,
    
    /* UNKNOW_TOKEN_DENIED */
    PoCApiCode_UNKNOW_TOKEN_DENIED = -164,
    
    /* USER_CHECK_FAILED */
    PoCApiCode_USER_CHECK_FAILED = -161,
    
    /* 访问被拒绝 */
    PoCApiCode_ACCESS_DENIED = -160,
    
    /* PARAMETER_DECRYPT_ERROR */
    PoCApiCode_PARAMETER_DECRYPT_ERROR = -141,
    
    /* 参数错误 */
    PoCApiCode_PARAMETER_ERROR = -140,
    
    /* mt参数服务端无法识别 */
    PoCApiCode_UNKNOWN_METHOD = -120,
    
    /* DUBBO_SERVICE_ERROR */
    PoCApiCode_DUBBO_SERVICE_ERROR = -109,
    
    /* DUBBO_SERVICE_TIMEOUT_ERROR */
    PoCApiCode_DUBBO_SERVICE_TIMEOUT_ERROR = -108,
    
    /* DUBBO_SERVICE_NOTFOUND_ERROR */
    PoCApiCode_DUBBO_SERVICE_NOTFOUND_ERROR = -107,
    
    /* SECURITY_SERVICE_ERROR */
    PoCApiCode_SECURITY_SERVICE_ERROR = -106,
    
    /* WEB_ACCESS_FAILED */
    PoCApiCode_WEB_ACCESS_FAILED = -105,
    
    /* FATAL_ERROR */
    PoCApiCode_FATAL_ERROR = -104,
    
    /* IP_DENIED */
    PoCApiCode_IP_DENIED = -103,
    
    /* SERIALIZE_FAILED */
    PoCApiCode_SERIALIZE_FAILED = -102,
    
    /* INTERNAL_SERVER_ERROR */
    PoCApiCode_INTERNAL_SERVER_ERROR = -101,
    
    /* 服务端返回未知错误 */
    PoCApiCode_UNKNOWN_ERROR = -100,
    
    /* 成功 */
    PoCApiCode_SUCCESS = 0,
    
}PoCApiCode;


@interface PoCCodeConverter : NSObject
+ (NSString *) description:(NSInteger) code;
@end