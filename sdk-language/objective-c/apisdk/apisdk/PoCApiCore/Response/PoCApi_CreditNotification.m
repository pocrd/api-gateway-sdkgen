// Auto Generated.  DO NOT EDIT!

#import "PoCApi_CreditNotification.h"
#import "PoCLocalException.h"

@implementation PoCApi_CreditNotification
@synthesize description;

/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (PoCApi_CreditNotification *) deserializeWithJsonData:(NSData *) jsonData
{

    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[PoCLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"PoCApi_CreditNotification 反序列化失败"];
    }
    return [PoCApi_CreditNotification deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (PoCApi_CreditNotification *) deserialize:(NSDictionary *)json
{
      if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
          PoCApi_CreditNotification *result = [[PoCApi_CreditNotification alloc] init];
      
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