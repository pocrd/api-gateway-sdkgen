#import "PoCBaseRequest.h"
#import "PoCApiContext.h"
#import "PoCApiCode.h"

NSString *const kAPIErrorDomain = @"API";

@interface PoCBaseRequest() {
    NSString *_cacheKey;
}

@end

@implementation PoCBaseRequest

- (id) initWithMethodName:(NSString *) methodName securityType:(SecurityType) securityType
{
    if (self = [super init])
    {
        _methodName = methodName;
        _securityType = securityType;
        _params = [NSMutableDictionary dictionaryWithCapacity:5];
        _response = nil;
        
        _needCache = NO;
        _expiredTime = 0;
        _isLoadFromCache = NO;
        _forceUpdate = NO;
        _cacheKey = nil;
        
        [_params setObject:methodName forKey:kMethod];
    }
    return self;
}

- (NSString *) methodName
{
    return _methodName;
}

- (long long) systime
{
    return _systime;
}

- (NSInteger) securityType
{
    return _securityType;
}

- (NSDictionary *) verifyMsgs
{
    return _verifyMsgs;
}

- (void) setParameter:(NSString *) value withName:(NSString *) name
{
    if(!name){
        return;
    }
    if(!value){
        value = @"";
    }
    [_params setObject:value forKey:name];
}

/* 用于记录访问日志 */
- (NSString *) stringInfo
{
    if (_params)
    {
        NSMutableString *info = [NSMutableString stringWithCapacity:20];
        for (NSString *name in _params.allKeys)
        {
            NSString *value = [_params objectForKey:name];
            if (info.length)
            {
                [info appendFormat:@"&%@=%@", name, value];
            }
            else
            {
                [info appendFormat:@"%@=%@", name, value];
            }
        }
        
        return info;
    }
    return @"";
}

- (void) addVerifyErrorWithName:(NSString *) name value:(NSString *) value
{
    if (!_verifyMsgs)
    {
        _verifyMsgs = [[NSMutableDictionary alloc] init];
    }
    [_verifyMsgs setObject:value forKey:name];
}

- (void) removeVerifyErrorWithName:(NSString *) name
{
    if (_verifyMsgs)
    {
        [_verifyMsgs removeObjectForKey:name];
    }
}

- (NSInteger) returnCode
{
    return _response.code;
}

- (NSString *) returnMessage
{
    return _response.message;
}

- (void) deserializeResponse:(NSDictionary *)json
{
    
}

- (void) fillError:(NSError *)error
{
    _error = error;
}

- (NSError *) error
{
    if (_error) {
        return _error;
    }
    
    if (_response.code == PoCApiCode_SUCCESS) {
        return nil;
    } else {
        NSDictionary *info = nil;
        if (_response.message) {
            info = @{NSLocalizedDescriptionKey:_response.message};
        }
        _error = [[NSError alloc] initWithDomain:@"API" code:_response.code userInfo:info];
        return _error;
    }
}

- (void) fillResponse:(NSInteger) code length:(NSInteger) length message:(NSString *)msg input:(NSDictionary *) json
{
    _response = [[PoCResponse alloc] init];
    _response.code = code;
    _response.length = length;
    _response.message = msg;
    
    self.resultDict = json;
    
    if (json)
    {
        [self deserializeResponse:json];
    }
}

- (id) result
{
    return nil;
}

- (NSString *) cacheKey {
    if (_cacheKey == nil) {
        NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
        NSArray *keyArr = @[kFormat, kLocation, kToken, kSignature, kApplicationId, kCallId, kDeviceId, kUserId, kVersionCode, kVersionName, kSignatureMethod, kPhoneNumber, kDynamic, kDeviceToken, kChannelId];
        for (NSString *key in self.params.allKeys)
        {
            if (![keyArr containsObject:key]) {
                [params setObject:self.params[key] forKey:key];
            }
        }
        
        NSMutableString *str = [[NSMutableString alloc] init];
        NSArray *array = [params.allKeys sortedArrayUsingSelector:@selector(compare:)];
        for (NSString *key in array)
        {
            if (str.length != 0) {
                [str appendString:@"&"];
            }
            [str appendString:key];
            [str appendString:@"="];
            NSObject *obj = params[key];
            NSString *value = [obj isKindOfClass:[NSNumber class]] ? [(NSNumber *)obj stringValue] : (NSString *)obj;
            [str appendString:value];
        }
        _cacheKey = str;
    }
    return _cacheKey;
}

- (long long) cacheVersion {
    NSString *version = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    if (version.length > 0) {
        return [version longLongValue];
    }
    return 0;
}

@end
