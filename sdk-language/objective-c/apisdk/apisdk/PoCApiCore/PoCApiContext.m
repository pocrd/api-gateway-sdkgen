#import "PoCApiContext.h"
#import "PoCBaseRequest.h"
#import "PoCLocalException.h"
#import "PoCApi_Response.h"
#import "PoCApi_CallState.h"
#import <CommonCrypto/CommonHMAC.h>
#import <Security/Security.h>
//#import "PoCAppChannelManager.h"

#define kAccessGroup @""

#import "PoCApiCode.h"

@interface PoCApiContext ()

@property (nonatomic, strong) NSString *deviceToken;
@end


@implementation PoCApiContext

- (id) initWithAppid:(NSString *)appid vercode:(NSInteger)code vername:(NSString *)name
{
    if (self = [super init])
    {
        _appid = appid;
        _vercode = code;
        _vername = name;
    }
    return self;
}

- (id) initWithAppid:(NSString *)appid vercode:(NSInteger) code vername:(NSString *)name location:(NSString *)location;
{
    if (self = [super init])
    {
        _appid = appid;
        _vercode = code;
        _location = location;
        _vername = name;
        
    }
    return self;
}

static NSString *rsaPublicKey;

+ (void) setRsaPublicKey:(NSString *)rsaPublic
{
    rsaPublicKey = rsaPublic;
}

+(NSString *)rsaPublicKey
{
    return rsaPublicKey;
}

- (void) setPhoneNumber:(NSString *)phoneNumber dynamic:(NSString *)dynamic
{
    _phoneNumber = phoneNumber;
    _dynamic = dynamic;
}

- (void) setDeviceId:(long long)deviceId deviceSecret:(NSString *)secret deviceToken:(NSString *)dtk
{
    _deviceId = deviceId;
    _deviceSecret = secret;
    _deviceToken = dtk;
}

- (void) setUserId:(long long)userId userToken:(NSString *)token expireTime:(long long)expire
{
    _userId = userId;
    _userToken = token;
    _userTokenExpire = expire;
}

- (NSString *) parameterStringWithRequests:(NSArray *)requests
{
    NSInteger securityType = 0;
    NSInteger length = requests.count;
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    NSMutableString *methodNames = [[NSMutableString alloc] init];
    
    for (NSInteger i = 0; i < length; i ++)
    {
        PoCBaseRequest *req = requests[i];
        securityType = securityType | req.securityType;
        for (NSString *key in req.params.allKeys)
        {
            if ([kMethod isEqualToString:key])
            {
                [methodNames appendString:req.params[key]];
                [methodNames appendString:@","];
            }
            else
            {
                if (length == 1)
                {
                    [params setObject:req.params[key] forKey:key];
                }
                else
                {
                    [params setObject:req.params[key] forKey:[NSString stringWithFormat:@"%ld_%@",i,key]];
                }
            }
        }
    }
    NSInteger methodNamesLen = [methodNames length];
    if (methodNamesLen > 0) {
        NSRange range;
        range.location = methodNamesLen - 1;
        range.length = 1;
        [methodNames deleteCharactersInRange:range];
    }
    
    [params setObject:methodNames forKey:kMethod];
    [params setObject:@"json" forKey:kFormat];
    
    if (_location && ![params objectForKey:kLocation])
    {
        [params setObject:_location forKey:kLocation];
    }
    
    if (_deviceId && ![params objectForKey:kDeviceId])
    {
        [params setObject:[NSString stringWithFormat:@"%lld",_deviceId] forKey:kDeviceId];
    }
    
    if (_appid && ![params objectForKey:kApplicationId])
    {
        [params setObject:_appid forKey:kApplicationId];
    }
    
    if (_userId && ![params objectForKey:kUserId])
    {
        [params setObject:[NSString stringWithFormat:@"%lld",_userId] forKey:kUserId];
    }
    
    if (_vercode && ![params objectForKey:kVersionCode])
    {
        [params setObject:[NSString stringWithFormat:@"%ld",(long)_vercode] forKey:kVersionCode];
    }
    
    if (_vername && ![params objectForKey:kVersionName])
    {
        [params setObject:_vername forKey:kVersionName];
    }
    
    
    // todo vernum _src _src_t
    
    if(![params objectForKey:kSignatureMethod]){
        [params setObject:@"sha1" forKey:kSignatureMethod];
    }
    //2015/07/07 添加渠道号参数
    if (![params objectForKey:kChannelId]) {
        [params setValue:self.channelId forKey:kChannelId];
    }
    
    if ((nil == _userToken || [_userToken isKindOfClass:[NSNull class]] || _userToken.length == 0) && securityType > 0)
    {
        if (_deviceToken != nil)
        {
            [params setObject:[NSString stringWithFormat:@"%@", _deviceToken] forKey:kDeviceToken];
        }
        else
        {
#warning todo 异常处理
        }
    }
    return [self parameterStringInternalWithDictionary:params SecurityType:securityType];
}

- (NSString *) parameterStringWithRequest:(PoCBaseRequest *)request
{
    return [self parameterStringWithRequests:[NSArray arrayWithObject:request]];
}

- (PoCServerResponse *) fillResponseWithRequests:(NSArray *)requests data:(NSData *)data
{
    if (data)
    {
        @try {
            NSError *error = nil;
            NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
            if (error)
            {
                for (PoCBaseRequest *request in requests) {
                    [request fillError:error];
                }
#warning todo log
            }
            
            return [self fillResponseWithRequests:requests dictionary:jsonDict];
        }
        @catch (NSException *exception)
        {
#warning todo log
        }
    }
    return nil;
}

- (PoCServerResponse *) fillResponseWithRequest:(PoCBaseRequest *)request data:(NSData *)data
{
    return [self fillResponseWithRequests:[NSArray arrayWithObject:request] data:data];
}

- (PoCServerResponse *) fillResponseWithRequests:(NSArray *)requests dictionary:(NSDictionary *)jsonDict
{
    PoCServerResponse *serverResp = nil;
    if (jsonDict)
    {
        NSArray *content = [jsonDict objectForKey:@"content"];
        PoCApi_Response *resp = [PoCApi_Response deserialize:[jsonDict objectForKey:@"stat"]];
        if (resp)
        {
            serverResp = [[PoCServerResponse alloc] initWithResponse:resp];
            if (resp.code == PoCApiCode_SUCCESS)
            {
                if (resp.stateList && resp.stateList.count == requests.count)
                {
                    NSArray *stateList = resp.stateList;
                    NSInteger respSize = stateList.count;
                    for (NSInteger i = 0; i < respSize; i++)
                    {
                        PoCApi_CallState *state = [stateList objectAtIndex:i];
                        PoCBaseRequest *request = [requests objectAtIndex:i];
                        request.systime = resp.systime;
                        [request fillResponse:state.code length:state.length message:state.msg input:[content objectAtIndex:i]];
                    }
                }
            }
            else
            {
                for (NSInteger i = 0; i < requests.count; i++)
                {
                    PoCBaseRequest *request = [requests objectAtIndex:i];
                    request.systime = resp.systime;
                    [request fillResponse:resp.code length:0 message:@"common error" input:nil];
                }
            }
        }
    }
    return serverResp;
    
}

- (PoCServerResponse *) fillResponseWithRequest:(PoCBaseRequest *)request dictionary:(NSDictionary *)jsonDict
{
    return [self fillResponseWithRequests:[NSArray arrayWithObject:request] dictionary:jsonDict];
}


- (NSString *) parameterStringInternalWithDictionary:(NSMutableDictionary *)params SecurityType:(NSInteger)securityType
{
    if (!(nil == _userToken || [_userToken isKindOfClass:[NSNull class]] || _userToken.length == 0))
    {
        if (!params[kToken])
        {
            [params setObject:_userToken forKey:kToken];
        }
    }
    else if((securityType & SecurityType_UserLogin) | (securityType & SecurityType_UserTrustedDevice))
    {
        @throw [[PoCLocalException alloc] initWithCode:LocalExceptionCode_TOKEN_MISSING];
    }
    
    if ((securityType & SecurityType_MobileOwner) | (securityType & SecurityType_MobileOwnerTrustedDevice))
    {
        [params setObject:_phoneNumber forKey:kPhoneNumber];
        [params setObject:_dynamic forKey:kDynamic];
    }
    
    [self signRequestWithDictionary:params securityType:securityType];
    if (params.allKeys.count > 0)
    {
        @try {
            NSMutableString *str = [[NSMutableString alloc] init];
            for (NSString *key in params.allKeys)
            {
                [str appendString:key];
                [str appendString:@"="];
                NSObject *obj = params[key];
                NSString *value = [obj isKindOfClass:[NSNumber class]] ? [(NSNumber *)obj stringValue] : (NSString *)obj;
                [str appendString:[self encodeURL:value]];
                [str appendString:@"&"];
            }
            return str;
        }
        @catch (NSException *exception)
        {
            #warning todo log
        }
    }
    @throw [[NSException alloc] initWithName:@"invalid request" reason:nil userInfo:nil];
}

- (void) fillErrorWithRequest:(PoCBaseRequest *)request code:(NSInteger)code
{
    [request fillResponse:code length:0 message:@"" input:nil];
}

- (void) fileErrorWithRequests:(NSArray *)requests code:(NSInteger)code
{
    NSInteger count = requests.count;
    for (NSInteger i = 0; i < count; i ++)
    {
        PoCBaseRequest *request = requests[i];
        [request fillResponse:code length:0 message:@"" input:nil];
    }
}

- (void) signRequestWithDictionary:(NSMutableDictionary *)params securityType:(NSInteger)securityType
{
    if (params[kSignature])
        return;
    @try
    {
        NSMutableString *str = [[NSMutableString alloc] init];
        NSArray *paramNames = [params.allKeys sortedArrayUsingComparator:^NSComparisonResult(NSString *obj1, NSString *obj2) {
            return [obj1 compare:obj2 options:NSLiteralSearch];
        }];
        for (NSString *key in paramNames)
        {
            [str appendString:key];
            [str appendString:@"="];
            NSObject *obj = params[key];
            if ([obj isKindOfClass:[NSNumber class]])
            {
                [str appendString:[(NSNumber *)obj stringValue]];
            }
            else
            {
                [str appendString:params[key]];
            }
        }
        
        if (securityType == 0)
        {
            [str appendString:@"net.pocrd"];
            NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
            data = [self sha1Digest:data];
            NSString *base64Str = [data base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
            [params setObject:base64Str forKey:kSignature];
        }
        else
        {
            if (_deviceSecret)
            {
                [str appendString:_deviceSecret];
                NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
                data = [self sha1Digest:data];
                NSString *base64Str = [data base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
                [params setObject:base64Str forKey:kSignature];
            }
            else
            {
#warning todo 异常处理
            }
        }
    }
    @catch (NSException *exception)
    {
#warning todo 异常处理
    }
}

- (void) setPhoneNumber:(NSString *)phoneNumber withDynamic:(NSString *)dynamic
{
    _phoneNumber = phoneNumber;
    _dynamic = dynamic;
}

- (NSString*)encodeURL:(NSString *)string
{
    NSString *newString = (__bridge_transfer NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (__bridge CFStringRef)string, NULL, CFSTR(":/?#[]@!$ &'()*+,;=\"<>%{}|\\^~`"), CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding));
    
    if (newString) {
        return newString; 
    }
    return @"";
}

- (NSData *) sha1Digest:(NSData *)data
{
#if TARGET_OS_IPHONE
    unsigned char result[CC_SHA1_DIGEST_LENGTH];
    
    CC_SHA1([data bytes], (CC_LONG)[data length], result);
    return [NSData dataWithBytes:result length:CC_SHA1_DIGEST_LENGTH];
#else
    return [SSCrypto getSHA1ForData:self];
#endif
}

@end
