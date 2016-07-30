#import <Foundation/Foundation.h>
#import "PoCResponse.h"

// error domain
FOUNDATION_EXTERN NSString *const kAPIErrorDomain;

/*
 * 接口安全级别定义
 */
typedef enum
{
    SecurityType_None = 0,
	SecurityType_RegisteredDevice = 0x0100,
	SecurityType_UserTrustedDevice = 0x0400,
	SecurityType_MobileOwner = 0x0800,
	SecurityType_MobileOwnerTrustedDevice = 0x1000,
	SecurityType_UserLogin = 0x2000,
	SecurityType_UserLoginAndMobileOwner = SecurityType_UserLogin + SecurityType_MobileOwner,
    SecurityType_Integrated = 0x10000000,
    SecurityType_Internal = 0x20000000
}SecurityType;

@interface PoCBaseRequest : NSObject
{
    @private
    NSMutableDictionary *_params;
    NSMutableDictionary *_verifyMsgs;
    NSString *_methodName;
    NSInteger _securityType;
    long long _systime;
    
    @protected
    PoCResponse *_response;
}

@property (nonatomic, strong) NSMutableDictionary *params;
@property (nonatomic, assign) long long systime;
@property (nonatomic, strong) NSDictionary *userInfo;           //上层可以设置识别PABaseRequest,特别是Mutable请求的时候

@property (nonatomic, strong) NSError *error;
@property (nonatomic, strong) NSDictionary *resultDict;

@property (nonatomic, strong) NSString *tag;

// add for web cache
@property (nonatomic, assign) BOOL needCache;                       // 是否需要使用缓存策略
@property (nonatomic, assign) BOOL isLoadFromCache;                 // 是否从缓存加载
@property (nonatomic, assign) BOOL forceUpdate;                     // 强制刷新缓存，即使缓存没有过期也要更新
@property (nonatomic, assign) NSInteger expiredTime;                // 缓存过期时间
@property (nonatomic, copy, readonly) NSString *cacheKey;           // 缓存key
@property (nonatomic, assign, readonly) long long cacheVersion;     // 缓存版本号，以当前软件版本号为标识


- (id) initWithMethodName:(NSString *)methodName securityType:(SecurityType)type;

// 服务端接口名
- (NSString*) methodName;

// 请求执行时的服务端时间，UTC时间的毫秒表示
//- (long long) systime;

// 本接口的安全级别，详细见枚举SecurityType的定义
- (NSInteger) securityType;

// 参数验证失败消息
- (NSMutableDictionary *) verifyMsgs;

// 设置参数，由子类实现调用
- (void) setParameter:(NSString *) value withName:(NSString *) name;

// 当前请求的字符串信息，用于日志记录
- (NSString *) stringInfo;

// 设置参数验证失败信息，由子类实现调用
- (void) addVerifyErrorWithName:(NSString *) name value:(NSString *) value;

// 删除参数验证失败信息
- (void) removeVerifyErrorWithName:(NSString *) name;

// 请求完成后的返回码
- (NSInteger) returnCode;

// 请求完成后的返回文本
- (NSString *) returnMessage;

// 反序列化返回值实体，由子类实现
- (void) deserializeResponse:(NSDictionary *) json;

// 填充错误信息
- (void) fillError:(NSError *)error;

// 填充返回信息
- (void) fillResponse:(NSInteger) code length:(NSInteger) length message:(NSString *) msg input:(NSDictionary *) json;

// 基类方法
- (id) result;
@end
