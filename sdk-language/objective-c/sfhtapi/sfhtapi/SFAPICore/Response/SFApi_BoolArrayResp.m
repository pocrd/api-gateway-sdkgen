// Auto Generated.  DO NOT EDIT!

#import "SFApi_BoolArrayResp.h"
#import "SFLocalException.h"

@implementation SFApi_BoolArrayResp
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
+ (SFApi_BoolArrayResp *) deserializeWithJsonData:(NSData *) jsonData
{

    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[SFLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"SFApi_BoolArrayResp 反序列化失败"];
    }
    return [SFApi_BoolArrayResp deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (SFApi_BoolArrayResp *) deserialize:(NSDictionary *)json
{
      if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
          SFApi_BoolArrayResp *result = [[SFApi_BoolArrayResp alloc] init];
      
        /* 布尔类型数组返回值 */
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
    
    /* 布尔类型数组返回值 */
    if (self.value && ![self.value isKindOfClass:[NSNull class]]) {
        NSMutableArray *valueArray = [NSMutableArray array];
        for (NSInteger i = 0; i < [self.value count]; i++) {
            NSNumber *value = self.value[i];
            if (value && ![value isKindOfClass:[NSNull class]]) {
                [valueArray addObject:value];
            }
        }
        [dict setObject:valueArray forKey:@"value"];
    }
      
    return dict;
}
@end