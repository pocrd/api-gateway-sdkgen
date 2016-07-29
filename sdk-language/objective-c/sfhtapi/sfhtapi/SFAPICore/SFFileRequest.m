//
//  SFFileRequest.m
//  LiuLian
//
//  Created by 肖信波 on 14-11-14.
//  Copyright (c) 2014年 MacBook Air. All rights reserved.
//

#import "SFFileRequest.h"

@implementation SFFileRequest

- (id)initWithMediaData:(NSData *)data fileName:(NSString *)fileName contentType:(SFFileRequestContentType)contentType
{
    if (self = [super initWithMethodName:@"file" securityType:SecurityType_UserLogin]) {
        
        self.data = data;
        self.fileName = fileName;
        self.contentType = contentType;
    }
    
    return self;
}

- (id)initWithfileName:(NSString *)fileName contentType:(SFFileRequestContentType)contentType {
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
        case SFFileRequestContentTypeImage:
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
- (SFFileResp *) result
{
    if (_response && ![_response isKindOfClass:[NSNull class]]) {
        return (SFFileResp *) _response.result;
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
        _response.result = [SFFileResp deserialize:json];
    }
    @catch (NSException *exception)
    {
        //SFDebug(@"%@%@",exception.reason,@"SFApi_USER_UserInfo deserialize failed");
    }
}

@end
