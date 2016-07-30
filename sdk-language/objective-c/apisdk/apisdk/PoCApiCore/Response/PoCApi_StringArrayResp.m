// Auto Generated.  DO NOT EDIT!

#import "PoCApi_StringArrayResp.h"
#import "PoCLocalException.h"

@implementation PoCApi_StringArrayResp
- (id) init
{
    if (self = [super init])
    {
        self.value = [[NSMutableArray alloc] init];
        
    }
    return (self);
}


/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (PoCApi_StringArrayResp *) deserializeWithJsonData:(NSData *) jsonData
{

    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[PoCLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"PoCApi_StringArrayResp 反序列化失败"];
    }
    return [PoCApi_StringArrayResp deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (PoCApi_StringArrayResp *) deserialize:(NSDictionary *)json
{
      if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
          PoCApi_StringArrayResp *result = [[PoCApi_StringArrayResp alloc] init];
      
        /* 字符串数组返回值 */
        NSArray *valueArray = [json objectForKey:@"value"];
        if (valueArray && ![valueArray isKindOfClass:[NSNull class]]) {
            for (NSInteger i =0; i < [valueArray count]; i++){
                [result.value addObject:[valueArray objectAtIndex:i]];
            }
        }
      
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
    
    /* 字符串数组返回值 */
    if (self.value && ![self.value isKindOfClass:[NSNull class]]) {
        NSMutableArray *valueArray = [NSMutableArray array];
        for (NSInteger i = 0; i < [self.value count]; i++) {
            NSString *value = self.value[i];
            if (value && ![value isKindOfClass:[NSNull class]]) {
                [valueArray addObject:value];
            }
        }
        [dict setObject:valueArray forKey:@"value"];
    }
      
    return dict;
}
@end