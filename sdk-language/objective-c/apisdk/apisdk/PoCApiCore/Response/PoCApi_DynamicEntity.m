// Auto Generated.  DO NOT EDIT!

#import "PoCApi_DynamicEntity.h"
#import "PoCLocalException.h"

@implementation PoCApi_DynamicEntity

/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (PoCApi_DynamicEntity *) deserializeWithJsonData:(NSData *) jsonData
{
    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[PoCLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"PoCApi_DynamicEntity 反序列化失败"];
    }
    return [PoCApi_DynamicEntity deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (PoCApi_DynamicEntity *) deserialize:(NSDictionary *)json
{
    if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
        PoCApi_DynamicEntity *result = [[PoCApi_DynamicEntity alloc] init];
      
        /* 动态类型的类型名 */
        result.typeName = [json objectForKey:@"typeName"];
        if ([result.typeName isKindOfClass:[NSNull class]]) { result.typeName = nil; }
              
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
    
    /* 动态类型实体 */
    if (self.entity != nil) [dict setObject:[self.entity serialize] forKey:@"entity"];
          
    /* 动态类型的类型名 */
    if (self.typeName != nil) [dict setObject:self.typeName forKey:@"typeName"];
          
    return dict;
}

@end
  
