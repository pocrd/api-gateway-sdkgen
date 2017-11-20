// Auto Generated.  DO NOT EDIT!

#import "PoCApi_DEMO_DemoEntity.h"
#import "PoCLocalException.h"

@implementation PoCApi_DEMO_DemoEntity

/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (PoCApi_DEMO_DemoEntity *) deserializeWithJsonData:(NSData *) jsonData
{
    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[PoCLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"PoCApi_DEMO_DemoEntity 反序列化失败"];
    }
    return [PoCApi_DEMO_DemoEntity deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (PoCApi_DEMO_DemoEntity *) deserialize:(NSDictionary *)json
{
    if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
        PoCApi_DEMO_DemoEntity *result = [[PoCApi_DEMO_DemoEntity alloc] init];
      
        /* id多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト */
        result.identify = [[json objectForKey:@"id"] integerValue];
              
        /* name多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト */
        result.name = [json objectForKey:@"name"];
        if ([result.name isKindOfClass:[NSNull class]]) { result.name = nil; }
              
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
    
    /* id多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト */
    [dict setObject:[NSNumber numberWithInteger:self.identify] forKey:@"id"];
          
    /* name多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト */
    if (self.name != nil) [dict setObject:self.name forKey:@"name"];
          
    return dict;
}

@end
  
