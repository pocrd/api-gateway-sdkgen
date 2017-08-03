#import "PoCServerResponse.h"
#import "PoCApi_Response.h"
#import "PoCApi_CreditNotification.h"
#import "PoCApi_MessageNotification.h"
#import "PoCApi_KeyValuePair.h"

@implementation PoCServerResponse

- (id) initWithResponse:(PoCApi_Response *) response
{
    if (self = [super init])
    {
        _messageNotifications = [[NSMutableArray alloc] init];
        _creditNotifications = [[NSMutableArray alloc] init];
        _systime = response.systime;
        _code = response.code;
        _cid = response.cid;
        
        [response.notificationList enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            
            PoCApi_KeyValuePair *kvp = (PoCApi_KeyValuePair*)obj;
            
            if ([kvp.key isEqual:CREDIT_KEY])
            {
                NSData* kvpData =[kvp.value dataUsingEncoding:NSUTF8StringEncoding];
                NSArray *kvpArray = [NSJSONSerialization JSONObjectWithData:kvpData
                                                                    options:NSJSONReadingMutableLeaves
                                                                      error:nil];
                
                if (kvpArray)
                {
                    for(int i = 0; i < kvpArray.count; i++)
                    {
                        [_creditNotifications addObject:[PoCApi_CreditNotification deserialize:kvpArray[i]]];
                    }
                }
                
            }
            else if ([kvp.key isEqual:MSG_KEY])
            {
                NSData* kvpData =[kvp.value dataUsingEncoding:NSUTF8StringEncoding];
                NSArray *kvpArray = [NSJSONSerialization JSONObjectWithData:kvpData
                                                                    options:NSJSONReadingMutableLeaves
                                                                      error:nil];
                
                if (kvpArray)
                {
                    for(int i = 0; i < kvpArray.count; i++)
                    {
                        [_messageNotifications addObject:[PoCApi_MessageNotification deserialize:kvpArray[i]]];
                    }
                }
             }
        }];
    }
    return (self);
}

@end
