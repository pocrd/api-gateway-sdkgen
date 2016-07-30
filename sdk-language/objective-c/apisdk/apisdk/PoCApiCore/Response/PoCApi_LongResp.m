// Auto Generated.  DO NOT EDIT!

#import "PoCApi_LongResp.h"
#import "PoCLocalException.h"

@implementation PoCApi_LongResp

/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (PoCApi_LongResp *) deserializeWithJsonData:(NSData *) jsonData
{

    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[PoCLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"PoCApi_LongResp 反序列化失败"];
    }
    return [PoCApi_LongResp deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (PoCApi_LongResp *) deserialize:(NSDictionary *)json
{
      if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
          PoCApi_LongResp *result = [[PoCApi_LongResp alloc] init];
      
        /* 长整形返回值 */
        result.value = [[json objectForKey:@"value"] longLongValue];
              
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
    
    /* 长整形返回值 */
    [dict setObject:[NSNumber numberWithLongLong:self.value] forKey:@"value"];
          
    return dict;
}
@end