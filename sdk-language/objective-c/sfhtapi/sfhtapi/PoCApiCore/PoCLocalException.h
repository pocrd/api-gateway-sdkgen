//
//  PALocalException.h
//  Server
//
//  Created by liuguanghui on 14-3-10.
//  Copyright (c) 2014年 Ping An Health Insurance Company of China, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    LocalExceptionCode_NOT_INIT = NSIntegerMin,
    LocalExceptionCode_UNKNOWN = -1,
    LocalExceptionCode_TOKEN_MISSING = 1000,
    LocalExceptionCode_CERT_BROKEN = 1010,
    LocalExceptionCode_DESERIALIZE_ERR = 1020,
}LocalExceptionCode;

@interface PoCLocalException : NSException
{
    NSInteger _code;
    NSObject *_data;
}

@property(nonatomic,assign,readonly)NSInteger code;
@property(nonatomic,strong)NSObject *data;

- (id) initWithCode:(NSInteger)code;
- (id) initWithCode:(NSInteger)code message:(NSString *)msg;
- (id) initWithCode:(NSInteger)code message:(NSString *)msg exception:(NSException *)e;

@end
