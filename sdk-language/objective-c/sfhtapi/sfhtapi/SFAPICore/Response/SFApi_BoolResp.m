// Auto Generated.  DO NOT EDIT!

#import "SFApi_BoolResp.h"
#import "SFLocalException.h"

@implementation SFApi_BoolResp

/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (SFApi_BoolResp *) deserializeWithJsonData:(NSData *) jsonData
{

    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[SFLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"SFApi_BoolResp 反序列化失败"];
    }
    return [SFApi_BoolResp deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (SFApi_BoolResp *) deserialize:(NSDictionary *)json
{
      if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
          SFApi_BoolResp *result = [[SFApi_BoolResp alloc] init];
      
        /* 布尔类型返回值 */
        result.value = [[json objectForKey:@"value"] boolValue];
              
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
    
    /* 布尔类型返回值 */
    [dict setObject:[NSNumber numberWithBool:self.value] forKey:@"value"];
          
    return dict;
}
@end