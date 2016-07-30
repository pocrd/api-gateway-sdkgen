// Auto Generated.  DO NOT EDIT!

#import "PoCApi_BoolResp.h"
#import "PoCLocalException.h"

@implementation PoCApi_BoolResp

/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (PoCApi_BoolResp *) deserializeWithJsonData:(NSData *) jsonData
{

    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[PoCLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"PoCApi_BoolResp 反序列化失败"];
    }
    return [PoCApi_BoolResp deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (PoCApi_BoolResp *) deserialize:(NSDictionary *)json
{
      if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
          PoCApi_BoolResp *result = [[PoCApi_BoolResp alloc] init];
      
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