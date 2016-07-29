// Auto Generated.  DO NOT EDIT!

#import "SFApi_Response.h"
#import "SFApi_CallState.h"
#import "SFApi_KeyValuePair.h"
#import "SFLocalException.h"

@implementation SFApi_Response
- (id) init
{
    if (self = [super init])
    {
        self.stateList = [[NSMutableArray alloc] init];
        self.notificationList = [[NSMutableArray alloc] init];
        
    }
    return (self);
}


/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (SFApi_Response *) deserializeWithJsonData:(NSData *) jsonData
{

    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[SFLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"SFApi_Response 反序列化失败"];
    }
    return [SFApi_Response deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (SFApi_Response *) deserialize:(NSDictionary *)json
{
      if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
          SFApi_Response *result = [[SFApi_Response alloc] init];
      
        /* 当前服务端时间 */
        result.systime = [[json objectForKey:@"systime"] longLongValue];
              
        /* 调用返回值 */
        result.code = [[json objectForKey:@"code"] integerValue];
              
        /* 调用标识符 */
        result.cid = [json objectForKey:@"cid"];
        if ([result.cid isKindOfClass:[NSNull class]]) { result.cid = nil; }
              
        /* 用作特定场景使用 */
        result.data = [json objectForKey:@"data"];
        if ([result.data isKindOfClass:[NSNull class]]) { result.data = nil; }
              
        /* API调用状态，code的信息请参考ApiCode定义文件 */
        NSArray *stateListArray = [json objectForKey:@"stateList"];
        if (stateListArray && ![stateListArray isKindOfClass:[NSNull class]]) {
            for (NSInteger i =0; i < [stateListArray count]; i++){
            NSDictionary *dict = [stateListArray objectAtIndex:i];
               if (dict && ![dict isKindOfClass:[NSNull class]]) {
                   [result.stateList addObject:[SFApi_CallState deserialize:dict]];
               }
            }
        }
      
        /* 服务端返回的通知事件集合 */
        NSArray *notificationListArray = [json objectForKey:@"notificationList"];
        if (notificationListArray && ![notificationListArray isKindOfClass:[NSNull class]]) {
            for (NSInteger i =0; i < [notificationListArray count]; i++){
            NSDictionary *dict = [notificationListArray objectAtIndex:i];
               if (dict && ![dict isKindOfClass:[NSNull class]]) {
                   [result.notificationList addObject:[SFApi_KeyValuePair deserialize:dict]];
               }
            }
        }
      
        return result;
    }
    return nil;
}

/*
 * 序列化函数，用于从对象生成数据字典
 */
- (NSMutableDictionary *) serialize
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    
    /* 当前服务端时间 */
    [dict setObject:[NSNumber numberWithLongLong:self.systime] forKey:@"systime"];
          
    /* 调用返回值 */
    [dict setObject:[NSNumber numberWithInteger:self.code] forKey:@"code"];
          
    /* 调用标识符 */
    if (self.cid != nil) [dict setObject:self.cid forKey:@"cid"];
          
    /* 用作特定场景使用 */
    if (self.data != nil) [dict setObject:self.data forKey:@"data"];
          
    /* API调用状态，code的信息请参考ApiCode定义文件 */
    if (self.stateList && ![self.stateList isKindOfClass:[NSNull class]]) {
        NSMutableArray *stateListArray = [NSMutableArray array];
        for (NSInteger i = 0; i < [self.stateList count]; i++) {
            SFApi_CallState *value = self.stateList[i];
            if (value && ![value isKindOfClass:[NSNull class]]) {
                if (value != nil) {
              [stateListArray addObject:[value serialize]];
              }
            }
        }
        [dict setObject:stateListArray forKey:@"stateList"];
    }
      
    /* 服务端返回的通知事件集合 */
    if (self.notificationList && ![self.notificationList isKindOfClass:[NSNull class]]) {
        NSMutableArray *notificationListArray = [NSMutableArray array];
        for (NSInteger i = 0; i < [self.notificationList count]; i++) {
            SFApi_KeyValuePair *value = self.notificationList[i];
            if (value && ![value isKindOfClass:[NSNull class]]) {
                if (value != nil) {
              [notificationListArray addObject:[value serialize]];
              }
            }
        }
        [dict setObject:notificationListArray forKey:@"notificationList"];
    }
      
    return dict;
}
@end