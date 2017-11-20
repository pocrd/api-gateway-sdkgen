// Auto Generated.  DO NOT EDIT!

#import "PoCApi_APITEST_BadResponse.h"
#import "PoCLocalException.h"

@implementation PoCApi_APITEST_BadResponse

/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (PoCApi_APITEST_BadResponse *) deserializeWithJsonData:(NSData *) jsonData
{
    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[PoCLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"PoCApi_APITEST_BadResponse 反序列化失败"];
    }
    return [PoCApi_APITEST_BadResponse deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (PoCApi_APITEST_BadResponse *) deserialize:(NSDictionary *)json
{
    if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
        PoCApi_APITEST_BadResponse *result = [[PoCApi_APITEST_BadResponse alloc] init];
      
        /* str */
        result.str = [json objectForKey:@"str"];
        if ([result.str isKindOfClass:[NSNull class]]) { result.str = nil; }
              
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
    
    /* str */
    if (self.str != nil) [dict setObject:self.str forKey:@"str"];
          
    return dict;
}

@end
  
