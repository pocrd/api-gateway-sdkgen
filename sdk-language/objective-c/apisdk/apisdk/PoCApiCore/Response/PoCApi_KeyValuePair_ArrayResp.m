// Auto Generated.  DO NOT EDIT!

#import "PoCApi_KeyValuePair_ArrayResp.h"
#import "PoCApi_KeyValuePair.h"
#import "PoCLocalException.h"

@implementation PoCApi_KeyValuePair_ArrayResp
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
+ (PoCApi_KeyValuePair_ArrayResp *) deserializeWithJsonData:(NSData *) jsonData
{

    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[PoCLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"PoCApi_KeyValuePair_ArrayResp 反序列化失败"];
    }
    return [PoCApi_KeyValuePair_ArrayResp deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (PoCApi_KeyValuePair_ArrayResp *) deserialize:(NSDictionary *)json
{
      if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
          PoCApi_KeyValuePair_ArrayResp *result = [[PoCApi_KeyValuePair_ArrayResp alloc] init];
      
        /* 键值对 */
        NSArray *valueArray = [json objectForKey:@"value"];
        if (valueArray && ![valueArray isKindOfClass:[NSNull class]]) {
            for (NSInteger i =0; i < [valueArray count]; i++){
            NSDictionary *dict = [valueArray objectAtIndex:i];
               if (dict && ![dict isKindOfClass:[NSNull class]]) {
                   [result.value addObject:[PoCApi_KeyValuePair deserialize:dict]];
               }
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
    
    /* 键值对 */
    if (self.value && ![self.value isKindOfClass:[NSNull class]]) {
        NSMutableArray *valueArray = [NSMutableArray array];
        for (NSInteger i = 0; i < [self.value count]; i++) {
            PoCApi_KeyValuePair *value = self.value[i];
            if (value && ![value isKindOfClass:[NSNull class]]) {
                if (value != nil) {
              [valueArray addObject:[value serialize]];
              }
            }
        }
        [dict setObject:valueArray forKey:@"value"];
    }
      
    return dict;
}
@end
