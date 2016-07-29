#import <Foundation/Foundation.h>
#import "SFApiContext.h"

@class SFBaseRequest;
@class SFFileRequest;

@interface SFApiAccessor : NSObject
{
    SFApiContext *_apiContext;
    NSInteger     _connTimeout;
    NSInteger     _soTimeout;
    NSString     *_agent;
    NSInteger    _keepalive;
    NSString     *_apiUrl;
}

@property (atomic, copy) NSString *src;
@property (atomic, copy) NSNumber *src_t;
@property (atomic, copy) NSString *referer;
@property (atomic, copy) NSString *spms;

- (id) initWithApiContext:(SFApiContext *) context
              connTimeout:(NSInteger) connTimeout
                soTimeout:(NSInteger) soTimeout
                    agent:(NSString *) agent
                keepalive:(NSInteger) keepalive
                   apiUrl:(NSString *) apiUrl;

- (SFServerResponse *) fillApiWithResponse:(SFBaseRequest *) request;
- (SFServerResponse *) fillApiWithResponses:(NSArray *) requests;

- (void)fillFileApiWithResponse:(SFFileRequest *)request;
- (NSURL *)downUrlWithResponse:(SFFileRequest *)request;

- (NSData *)requestWithUrl:(NSString *)url params:(NSString *)params error:(NSError **)error;
- (NSData *)requestWithUrl:(NSString *)url params:(NSString *)params method:(NSString *)method error:(NSError **)error;

@end
