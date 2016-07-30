#import <Foundation/Foundation.h>
#import "PoCApiContext.h"

@class PoCBaseRequest;
@class PoCFileRequest;

@interface PoCApiAccessor : NSObject
{
    PoCApiContext *_apiContext;
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

- (id) initWithApiContext:(PoCApiContext *) context
              connTimeout:(NSInteger) connTimeout
                soTimeout:(NSInteger) soTimeout
                    agent:(NSString *) agent
                keepalive:(NSInteger) keepalive
                   apiUrl:(NSString *) apiUrl;

- (PoCServerResponse *) fillApiWithResponse:(PoCBaseRequest *) request;
- (PoCServerResponse *) fillApiWithResponses:(NSArray *) requests;

- (void)fillFileApiWithResponse:(PoCFileRequest *)request;
- (NSURL *)downUrlWithResponse:(PoCFileRequest *)request;

- (NSData *)requestWithUrl:(NSString *)url params:(NSString *)params error:(NSError **)error;
- (NSData *)requestWithUrl:(NSString *)url params:(NSString *)params method:(NSString *)method error:(NSError **)error;

@end
