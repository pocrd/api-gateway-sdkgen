// Auto Generated.  DO NOT EDIT!

#import "PoCApi_APITEST_SimpleTestEntity.h"
#import "PoCLocalException.h"

@implementation PoCApi_APITEST_SimpleTestEntity
- (id) init
{
    if (self = [super init])
    {
        self.intArray = [[NSMutableArray alloc] init];
        
    }
    return (self);
}


/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (PoCApi_APITEST_SimpleTestEntity *) deserializeWithJsonData:(NSData *) jsonData
{
    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[PoCLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"PoCApi_APITEST_SimpleTestEntity 反序列化失败"];
    }
    return [PoCApi_APITEST_SimpleTestEntity deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (PoCApi_APITEST_SimpleTestEntity *) deserialize:(NSDictionary *)json
{
    if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
        PoCApi_APITEST_SimpleTestEntity *result = [[PoCApi_APITEST_SimpleTestEntity alloc] init];
      
        /* string value */
        result.strValue = [json objectForKey:@"strValue"];
        if ([result.strValue isKindOfClass:[NSNull class]]) { result.strValue = nil; }
              
        /* int array */
        NSArray *intArrayArray = [json objectForKey:@"intArray"];
        if (intArrayArray && ![intArrayArray isKindOfClass:[NSNull class]]) {
            for (NSInteger i = 0; i < [intArrayArray count]; i++){
                [result.intArray addObject:[intArrayArray objectAtIndex:i]];
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
    
    /* string value */
    if (self.strValue != nil) [dict setObject:self.strValue forKey:@"strValue"];
          
    /* int array */
    if (self.intArray && ![self.intArray isKindOfClass:[NSNull class]]) {
        NSMutableArray *intArrayArray = [NSMutableArray array];
        for (NSInteger i = 0; i < [self.intArray count]; i++) {
            NSNumber *value = self.intArray[i];
            if (value && ![value isKindOfClass:[NSNull class]]) {
                [intArrayArray addObject:value];
            }
        }
        [dict setObject:intArrayArray forKey:@"intArray"];
    }
      
    return dict;
}

@end
  
