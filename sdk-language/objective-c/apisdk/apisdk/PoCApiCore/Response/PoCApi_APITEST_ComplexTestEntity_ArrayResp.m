// Auto Generated.  DO NOT EDIT!

#import "PoCApi_APITEST_ComplexTestEntity_ArrayResp.h"
#import "PoCApi_APITEST_ComplexTestEntity.h"
#import "PoCLocalException.h"

@implementation PoCApi_APITEST_ComplexTestEntity_ArrayResp
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
+ (PoCApi_APITEST_ComplexTestEntity_ArrayResp *) deserializeWithJsonData:(NSData *) jsonData
{
    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[PoCLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"PoCApi_APITEST_ComplexTestEntity_ArrayResp 反序列化失败"];
    }
    return [PoCApi_APITEST_ComplexTestEntity_ArrayResp deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (PoCApi_APITEST_ComplexTestEntity_ArrayResp *) deserialize:(NSDictionary *)json
{
    if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
        PoCApi_APITEST_ComplexTestEntity_ArrayResp *result = [[PoCApi_APITEST_ComplexTestEntity_ArrayResp alloc] init];
      
        /* ComplexTestEntity */
        NSArray *valueArray = [json objectForKey:@"value"];
        if (valueArray && ![valueArray isKindOfClass:[NSNull class]]) {
            for (NSInteger i = 0; i < [valueArray count]; i++){
                NSDictionary *dict = [valueArray objectAtIndex:i];
                if (dict && ![dict isKindOfClass:[NSNull class]]) {
                    [result.value addObject:[PoCApi_APITEST_ComplexTestEntity deserialize:dict]];
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
    
    /* ComplexTestEntity */
    if (self.value && ![self.value isKindOfClass:[NSNull class]]) {
        NSMutableArray *valueArray = [NSMutableArray array];
        for (NSInteger i = 0; i < [self.value count]; i++) {
            PoCApi_APITEST_ComplexTestEntity *value = self.value[i];
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
  
