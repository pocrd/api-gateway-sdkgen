#import <Foundation/Foundation.h>

#ifndef PAServerAPIClient_iOS_PAServerResponse_h
#define PAServerAPIClient_iOS_PAServerResponse_h

#define CREDIT_KEY @"net.pocrd.CREDIT"
#define MSG_KEY @"net.pocrd.MSG"
#endif

@class SFServerResponse;
@class SFApi_Response;

@interface SFServerResponse : NSObject
{
    
}

@property (nonatomic, assign, readonly) long long systime;
@property (nonatomic, assign, readonly) NSInteger code;
@property (nonatomic, strong, readonly) NSString *cid;
@property (nonatomic, strong, readonly) NSString *data;
@property (nonatomic, strong, readonly) NSMutableArray *messageNotifications;
@property (nonatomic, strong, readonly) NSMutableArray *creditNotifications;

- (id) initWithResponse:(SFApi_Response *) response;
@end