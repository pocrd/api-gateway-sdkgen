#import "SFServerResponse.h"
#import "SFApi_Response.h"
#import "SFApi_CreditNotification.h"
#import "SFApi_MessageNotification.h"
#import "SFApi_KeyValuePair.h"

@implementation SFServerResponse

- (id) initWithResponse:(SFApi_Response *) response
{
    if (self = [super init])
    {
        _messageNotifications = [[NSMutableArray alloc] init];
        _creditNotifications = [[NSMutableArray alloc] init];
        _systime = response.systime;
        _code = response.code;
        _cid = response.cid;
        _data = response.data;
        
        [response.notificationList enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            
            SFApi_KeyValuePair *kvp = (SFApi_KeyValuePair*)obj;
            
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
                        [_creditNotifications addObject:[SFApi_CreditNotification deserialize:kvpArray[i]]];
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
                        [_messageNotifications addObject:[SFApi_MessageNotification deserialize:kvpArray[i]]];
                    }
                }
             }
        }];
    }
    return (self);
}

@end