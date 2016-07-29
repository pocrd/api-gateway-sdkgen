// Auto Generated.  DO NOT EDIT!

#import "SFApi_CreditNotification.h"
#import "SFLocalException.h"

@implementation SFApi_CreditNotification
@synthesize description;

/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (SFApi_CreditNotification *) deserializeWithJsonData:(NSData *) jsonData
{

    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[SFLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"SFApi_CreditNotification 反序列化失败"];
    }
    return [SFApi_CreditNotification deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (SFApi_CreditNotification *) deserialize:(NSDictionary *)json
{
      if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
          SFApi_CreditNotification *result = [[SFApi_CreditNotification alloc] init];
      
        /* 描述,为何送积分 */
        result.description = [json objectForKey:@"description"];
        if ([result.description isKindOfClass:[NSNull class]]) { result.description = nil; }
              
        /* 积分值 */
        result.credit = [[json objectForKey:@"credit"] longLongValue];
              
        /* 提示,送了多少积分 */
        result.notification = [json objectForKey:@"notification"];
        if ([result.notification isKindOfClass:[NSNull class]]) { result.notification = nil; }
              
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
    
    /* 描述,为何送积分 */
    if (self.description != nil) [dict setObject:self.description forKey:@"description"];
          
    /* 积分值 */
    [dict setObject:[NSNumber numberWithLongLong:self.credit] forKey:@"credit"];
          
    /* 提示,送了多少积分 */
    if (self.notification != nil) [dict setObject:self.notification forKey:@"notification"];
          
    return dict;
}
@end