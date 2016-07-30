// Auto Generated.  DO NOT EDIT!

#import "PoCApi_CallState.h"
#import "PoCLocalException.h"

@implementation PoCApi_CallState

/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (PoCApi_CallState *) deserializeWithJsonData:(NSData *) jsonData
{

    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[PoCLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"PoCApi_CallState 反序列化失败"];
    }
    return [PoCApi_CallState deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (PoCApi_CallState *) deserialize:(NSDictionary *)json
{
      if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
          PoCApi_CallState *result = [[PoCApi_CallState alloc] init];
      
        /* 返回值 */
        result.code = [[json objectForKey:@"code"] integerValue];
              
        /* 数据长度 */
        result.length = [[json objectForKey:@"length"] integerValue];
              
        /* 返回信息 */
        result.msg = [json objectForKey:@"msg"];
        if ([result.msg isKindOfClass:[NSNull class]]) { result.msg = nil; }
              
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
    
    /* 返回值 */
    [dict setObject:[NSNumber numberWithInteger:self.code] forKey:@"code"];
          
    /* 数据长度 */
    [dict setObject:[NSNumber numberWithInteger:self.length] forKey:@"length"];
          
    /* 返回信息 */
    if (self.msg != nil) [dict setObject:self.msg forKey:@"msg"];
          
    return dict;
}
@end