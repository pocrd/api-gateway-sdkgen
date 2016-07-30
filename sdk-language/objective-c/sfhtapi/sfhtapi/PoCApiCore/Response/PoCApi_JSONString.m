// Auto Generated.  DO NOT EDIT!

#import "PoCApi_JSONString.h"
#import "PoCLocalException.h"

@implementation PoCApi_JSONString

/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (PoCApi_JSONString *) deserializeWithJsonData:(NSData *) jsonData
{

    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[PoCLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"PoCApi_JSONString 反序列化失败"];
    }
    return [PoCApi_JSONString deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (PoCApi_JSONString *) deserialize:(NSDictionary *)json
{
      if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
          PoCApi_JSONString *result = [[PoCApi_JSONString alloc] init];
          NSData *jsonData = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:NULL];
              result.value = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
          
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
    
    /* json string */
    if (self.value != nil) [dict setObject:self.value forKey:@"value"];
          
    return dict;
}
@end
