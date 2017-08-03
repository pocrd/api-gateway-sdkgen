#import "PoCBaseRequest.h"
#import "PoCFileResp.h"


typedef NS_ENUM(NSInteger, PoCFileRequestContentType) {
    PoCFileRequestContentTypeImage = 0,
    PoCFileRequestContentTypeVideo = 1,
};


@interface PoCFileRequest : PoCBaseRequest

- (id)initWithMediaData:(NSData *)data fileName:(NSString *)fileName contentType:(PoCFileRequestContentType)contentType;

/**
 *  用于下载图片
 *
 *  @param fileName    文件名
 *  @param contentType 类型
 *
 *  @return PoCFileRequest
 */
- (id)initWithfileName:(NSString *)fileName contentType:(PoCFileRequestContentType)contentType;

@property (nonatomic, retain) NSData *data;
@property (nonatomic, retain) NSString *fileName;
@property (nonatomic, assign) PoCFileRequestContentType contentType;
@property (nonatomic, readonly) NSString *contentTypeText;

/*
 * 当前请求有可能的异常返回值
 */
- (NSInteger) handleError;

/*
 * 获取服务端返回的请求结果实体
 */
- (PoCFileResp *) result;

@end
