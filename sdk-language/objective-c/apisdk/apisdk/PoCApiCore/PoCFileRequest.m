#import "PoCFileRequest.h"

@implementation PoCFileRequest

- (id)initWithMediaData:(NSData *)data fileName:(NSString *)fileName contentType:(PoCFileRequestContentType)contentType
{
    if (self = [super initWithMethodName:@"file" securityType:SecurityType_UserLogin]) {
        
        self.data = data;
        self.fileName = fileName;
        self.contentType = contentType;
    }
    
    return self;
}

- (id)initWithfileName:(NSString *)fileName contentType:(PoCFileRequestContentType)contentType {
    self = [super initWithMethodName:@"file" securityType:SecurityType_UserLogin];
    if (self) {
        self.fileName = fileName;
        self.contentType = contentType;
        
        [self setParameter:fileName withName:@"n"];
    }
    return self;
}

- (NSString *)contentTypeText
{
    NSString *text = @"";
    switch (self.contentType) {
        case PoCFileRequestContentTypeImage:
            text = @"image/jpeg";
            break;
        default:
            
            break;
    }
    
    return text;
}

/*
 * 当前请求有可能的异常返回值
 */
- (NSInteger) handleError
{
    switch (_response.code)
    {
    }
    return _response.code;
}

/*
 * 获取服务端返回的请求结果实体
 */
- (PoCFileResp *) result
{
    if (_response && ![_response isKindOfClass:[NSNull class]]) {
        return (PoCFileResp *) _response.result;
    }
    return nil;
}

/*
 * 将服务端返回的json数据反序列化为实体
 */
- (void) deserializeResponse:(NSDictionary *) json
{
    @try
    {
        _response.result = [PoCFileResp deserialize:json];
    }
    @catch (NSException *exception)
    {
        //PoCDebug(@"%@%@",exception.reason,@"PoCApi_USER_UserInfo deserialize failed");
    }
}

@end
