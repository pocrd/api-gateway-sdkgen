#import <Foundation/Foundation.h>
#import "PoCServerResponse.h"

#define kFormat @"_ft"
#define kLocation @"_lo"
#define kToken @"_tk"
#define kMethod @"_mt"
#define kSignature @"_sig"
#define kApplicationId @"_aid"
#define kCallId @"_cid"
#define kDeviceId @"_did"
#define kUserId @"_uid"
#define kVersionCode @"_vc"
#define kVersionName @"_vn"


/**
 * signature method 签名算法 hmac,md5,sha1,rsa,ecc
 */
#define kSignatureMethod @"_sm"

/**
 * 动态密码验证对应的手机号
 */
#define kPhoneNumber @"_pn"

/**
 * 动态密码验证对应的动态码
 */
#define kDynamic @"_dyn"

/**
 * device token 代表访问设备的身份
 */
#define kDeviceToken @"_dtk"

/**
 * app渠道id
 */
#define kChannelId @"_ch"

@class PoCBaseRequest;

@interface PoCApiContext : NSObject
{
    NSString *_appid;
    NSInteger _vercode;
    NSString *_vername;
    NSString *_location;
    long long _deviceId;
    NSString *_deviceSecret;
    NSString *_deviceToken;
    long long _userId;
    NSString *_userToken;
    long long _tokenExpireTime;
    NSString *_phoneNumber;
    NSString *_dynamic;
}

@property(nonatomic, strong) NSString *appid;
@property(nonatomic, strong) NSString *location;
@property(nonatomic, assign) long long deviceId;
@property(nonatomic, assign) long long userId;
@property(nonatomic, strong) NSString *userToken;
@property(nonatomic, assign) long long userTokenExpire;
@property(nonatomic, strong) NSString *channelId;

+ (NSString *) rsaPublicKey;
+ (void) setRsaPublicKey:(NSString *)rsaPublic;

- (id) initWithAppid:(NSString *)appid vercode:(NSInteger)code vername:(NSString *)name;
- (id) initWithAppid:(NSString *)appid vercode:(NSInteger)code vername:(NSString *)name location:(NSString *)location;
- (void) setPhoneNumber:(NSString *)phoneNumber dynamic:(NSString *)dynamic;
- (void) setDeviceId:(long long)deviceId deviceSecret:(NSString *)secret deviceToken:(NSString *)dtk;
- (void) setUserId:(long long)userId userToken:(NSString *)token expireTime:(long long)expire;
- (NSString *) parameterStringWithRequests:(NSArray *)requests;
- (NSString *) parameterStringWithRequest:(PoCBaseRequest *)request;
- (PoCServerResponse *) fillResponseWithRequests:(NSArray *)requests data:(NSData *)data;
- (PoCServerResponse *) fillResponseWithRequest:(PoCBaseRequest *)request data:(NSData *)data;
- (PoCServerResponse *) fillResponseWithRequests:(NSArray *)requests dictionary:(NSDictionary *)jsonDict;
- (PoCServerResponse *) fillResponseWithRequest:(PoCBaseRequest *)request dictionary:(NSDictionary *)jsonDict;
- (void) fillErrorWithRequest:(PoCBaseRequest *)request code:(NSInteger)code;
- (void) fileErrorWithRequests:(NSArray *)requests code:(NSInteger)code;

@end
