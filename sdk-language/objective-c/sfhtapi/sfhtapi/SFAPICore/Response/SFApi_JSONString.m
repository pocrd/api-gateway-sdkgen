// Auto Generated.  DO NOT EDIT!

#import "SFApi_JSONString.h"
#import "SFLocalException.h"

@implementation SFApi_JSONString

/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (SFApi_JSONString *) deserializeWithJsonData:(NSData *) jsonData
{

    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[SFLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"SFApi_JSONString 反序列化失败"];
    }
    return [SFApi_JSONString deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (SFApi_JSONString *) deserialize:(NSDictionary *)json
{
      if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
          SFApi_JSONString *result = [[SFApi_JSONString alloc] init];
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