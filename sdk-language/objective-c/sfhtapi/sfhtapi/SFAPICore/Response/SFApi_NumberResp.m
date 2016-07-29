// Auto Generated.  DO NOT EDIT!

#import "SFApi_NumberResp.h"
#import "SFLocalException.h"

@implementation SFApi_NumberResp

/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (SFApi_NumberResp *) deserializeWithJsonData:(NSData *) jsonData
{

    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[SFLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"SFApi_NumberResp 反序列化失败"];
    }
    return [SFApi_NumberResp deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (SFApi_NumberResp *) deserialize:(NSDictionary *)json
{
      if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
          SFApi_NumberResp *result = [[SFApi_NumberResp alloc] init];
      
        /* 数值型返回值，包含byte, char, short, int */
        result.value = [[json objectForKey:@"value"] integerValue];
              
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
    
    /* 数值型返回值，包含byte, char, short, int */
    [dict setObject:[NSNumber numberWithInteger:self.value] forKey:@"value"];
          
    return dict;
}
@end