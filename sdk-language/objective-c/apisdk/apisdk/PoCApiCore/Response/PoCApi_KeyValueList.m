// Auto Generated.  DO NOT EDIT!

#import "PoCApi_KeyValueList.h"
#import "PoCApi_KeyValuePair.h"
#import "PoCLocalException.h"

@implementation PoCApi_KeyValueList
- (id) init
{
    if (self = [super init])
    {
        self.keyValue = [[NSMutableArray alloc] init];
        
    }
    return (self);
}


/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (PoCApi_KeyValueList *) deserializeWithJsonData:(NSData *) jsonData
{

    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[PoCLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"PoCApi_KeyValueList 反序列化失败"];
    }
    return [PoCApi_KeyValueList deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (PoCApi_KeyValueList *) deserialize:(NSDictionary *)json
{
      if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
          PoCApi_KeyValueList *result = [[PoCApi_KeyValueList alloc] init];
      
        /* 键值对列表 */
        NSArray *keyValueArray = [json objectForKey:@"keyValue"];
        if (keyValueArray && ![keyValueArray isKindOfClass:[NSNull class]]) {
            for (NSInteger i =0; i < [keyValueArray count]; i++){
            NSDictionary *dict = [keyValueArray objectAtIndex:i];
               if (dict && ![dict isKindOfClass:[NSNull class]]) {
                   [result.keyValue addObject:[PoCApi_KeyValuePair deserialize:dict]];
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
    
    /* 键值对列表 */
    if (self.keyValue && ![self.keyValue isKindOfClass:[NSNull class]]) {
        NSMutableArray *keyValueArray = [NSMutableArray array];
        for (NSInteger i = 0; i < [self.keyValue count]; i++) {
            PoCApi_KeyValuePair *value = self.keyValue[i];
            if (value && ![value isKindOfClass:[NSNull class]]) {
                if (value != nil) {
              [keyValueArray addObject:[value serialize]];
              }
            }
        }
        [dict setObject:keyValueArray forKey:@"keyValue"];
    }
      
    return dict;
}
@end