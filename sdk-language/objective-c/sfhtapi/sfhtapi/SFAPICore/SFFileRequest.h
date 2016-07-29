//
//  SFFileRequest.h
//  LiuLian
//
//  Created by 肖信波 on 14-11-14.
//  Copyright (c) 2014年 MacBook Air. All rights reserved.
//

#import "SFBaseRequest.h"
#import "SFFileResp.h"


typedef NS_ENUM(NSInteger, SFFileRequestContentType) {
    SFFileRequestContentTypeImage = 0,
    SFFileRequestContentTypeVideo = 1,
};


@interface SFFileRequest : SFBaseRequest

- (id)initWithMediaData:(NSData *)data fileName:(NSString *)fileName contentType:(SFFileRequestContentType)contentType;

/**
 *  用于下载图片
 *
 *  @param fileName    文件名
 *  @param contentType 类型
 *
 *  @return SFFileRequest
 */
- (id)initWithfileName:(NSString *)fileName contentType:(SFFileRequestContentType)contentType;

@property (nonatomic, retain) NSData *data;
@property (nonatomic, retain) NSString *fileName;
@property (nonatomic, assign) SFFileRequestContentType contentType;
@property (nonatomic, readonly) NSString *contentTypeText;

/*
 * 当前请求有可能的异常返回值
 */
- (NSInteger) handleError;

/*
 * 获取服务端返回的请求结果实体
 */
- (SFFileResp *) result;

@end
