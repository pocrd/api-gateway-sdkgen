// Auto Generated.  DO NOT EDIT!

#import "SFApi_StringResp.h"
#import "SFLocalException.h"

@implementation SFApi_StringResp

/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (SFApi_StringResp *) deserializeWithJsonData:(NSData *) jsonData
{

    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[SFLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"SFApi_StringResp 反序列化失败"];
    }
    return [SFApi_StringResp deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (SFApi_StringResp *) deserialize:(NSDictionary *)json
{
      if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
          SFApi_StringResp *result = [[SFApi_StringResp alloc] init];
      
        /* 字符串返回值 */
        result.value = [json objectForKey:@"value"];
        if ([result.value isKindOfClass:[NSNull class]]) { result.value = nil; }
              
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
    
    /* 字符串返回值 */
    if (self.value != nil) [dict setObject:self.value forKey:@"value"];
          
    return dict;
}
@end