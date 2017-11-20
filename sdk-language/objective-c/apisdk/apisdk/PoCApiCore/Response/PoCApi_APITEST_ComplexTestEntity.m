// Auto Generated.  DO NOT EDIT!

#import "PoCApi_APITEST_ComplexTestEntity.h"
#import "PoCApi_APITEST_SimpleTestEntity.h"
#import "PoCApi_DynamicEntity.h"
#import "PoCApi_APITEST_BadResponse.h"
#import "PoCApi_KeyValueList.h"
#import "PoCLocalException.h"

@implementation PoCApi_APITEST_ComplexTestEntity
- (id) init
{
    if (self = [super init])
    {
        self.simpleTestEntityList = [[NSMutableArray alloc] init];
        self.dynamicEntityList = [[NSMutableArray alloc] init];
        
    }
    return (self);
}


/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (PoCApi_APITEST_ComplexTestEntity *) deserializeWithJsonData:(NSData *) jsonData
{
    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[PoCLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"PoCApi_APITEST_ComplexTestEntity 反序列化失败"];
    }
    return [PoCApi_APITEST_ComplexTestEntity deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (PoCApi_APITEST_ComplexTestEntity *) deserialize:(NSDictionary *)json
{
    if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
        PoCApi_APITEST_ComplexTestEntity *result = [[PoCApi_APITEST_ComplexTestEntity alloc] init];
      
        /* strValue */
        result.strValue = [json objectForKey:@"strValue"];
        if ([result.strValue isKindOfClass:[NSNull class]]) { result.strValue = nil; }
              
        /* shortValue */
        result.shortValue = [[json objectForKey:@"shortValue"] shortValue];
              
        /* byteValue */
        result.byteValue = [(NSNumber *)[json objectForKey:@"byteValue"] charValue];
              
        /* doubleValue */
        result.doubleValue = (int)(([[json objectForKey:@"doubleValue"] doubleValue] + 0.00005) * 100) / 100.00;
              
        /* floatValue */
        result.floatValue = (int)(([[json objectForKey:@"floatValue"] floatValue] + 0.00005) * 100) / 100.00;
              
        /* boolValue */
        result.boolValue = [[json objectForKey:@"boolValue"] boolValue];
              
        /* intValue */
        result.intValue = [[json objectForKey:@"intValue"] integerValue];
              
        /* longValue */
        result.longValue = [[json objectForKey:@"longValue"] longLongValue];
              
        /* charValue */
        {
            NSString * v = [json objectForKey:@"charValue"];
            if (v != nil  &&  v.length == 1) {
                result.charValue = [v characterAtIndex:0];
            }
        }
              
        /* SimpleTestEntity List */
        NSArray *simpleTestEntityListArray = [json objectForKey:@"simpleTestEntityList"];
        if (simpleTestEntityListArray && ![simpleTestEntityListArray isKindOfClass:[NSNull class]]) {
            for (NSInteger i = 0; i < [simpleTestEntityListArray count]; i++){
                NSDictionary *dict = [simpleTestEntityListArray objectAtIndex:i];
                if (dict && ![dict isKindOfClass:[NSNull class]]) {
                    [result.simpleTestEntityList addObject:[PoCApi_APITEST_SimpleTestEntity deserialize:dict]];
                }
            }
        }
      
        /* simpleTestEntity */
        result.simpleTestEntity = [PoCApi_APITEST_SimpleTestEntity deserialize:[json objectForKey:@"simpleTestEntity"]];
        if ([result.simpleTestEntity isKindOfClass:[NSNull class]]) { result.simpleTestEntity = nil; }
              
        /* dynamic entity 本字段为动态数据类型, 可能类型为以下种类:SimpleTestEntity, BadResponse,  */
        NSDictionary *de = [json objectForKey:@"dynamicEntity"];
        result.dynamicEntity = [PoCApi_DynamicEntity deserialize:de];
        if ([result.dynamicEntity isKindOfClass:[NSNull class]]) { 
            result.dynamicEntity = nil; 
        } else {
            if ([@"SimpleTestEntity" isEqualToString:result.dynamicEntity.typeName]) {
                result.dynamicEntity.entity = [PoCApi_APITEST_SimpleTestEntity deserialize:[de objectForKey:@"entity"]];
            } else if ([@"BadResponse" isEqualToString:result.dynamicEntity.typeName]) {
                result.dynamicEntity.entity = [PoCApi_APITEST_BadResponse deserialize:[de objectForKey:@"entity"]];
            }
        }
              
        /* dynamic entity list 本字段为动态数据类型, 可能类型为以下种类:SimpleTestEntity, BadResponse, KeyValueList,  */
        NSArray *dynamicEntityListArray = [json objectForKey:@"dynamicEntityList"];
        if (dynamicEntityListArray && ![dynamicEntityListArray isKindOfClass:[NSNull class]]) {
            for (NSInteger i = 0; i < [dynamicEntityListArray count]; i++){
                NSDictionary *dict = [dynamicEntityListArray objectAtIndex:i];
                if (dict && ![dict isKindOfClass:[NSNull class]]) {
                    PoCApi_DynamicEntity *e = [PoCApi_DynamicEntity deserialize:dict];
                    [result.dynamicEntityList addObject:e];
                    if ([@"SimpleTestEntity" isEqualToString:e.typeName]) {
                        e.entity = [PoCApi_APITEST_SimpleTestEntity deserialize:[dict objectForKey:@"entity"]];
                    } else if ([@"BadResponse" isEqualToString:e.typeName]) {
                        e.entity = [PoCApi_APITEST_BadResponse deserialize:[dict objectForKey:@"entity"]];
                    } else if ([@"KeyValueList" isEqualToString:e.typeName]) {
                        e.entity = [PoCApi_KeyValueList deserialize:[dict objectForKey:@"entity"]];
                    }
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
    
    /* strValue */
    if (self.strValue != nil) [dict setObject:self.strValue forKey:@"strValue"];
          
    /* shortValue */
    [dict setObject:[NSNumber numberWithShort:self.shortValue] forKey:@"shortValue"];
          
    /* byteValue */
    [dict setObject:[NSNumber numberWithChar:self.byteValue] forKey:@"byteValue"];
          
    /* doubleValue */
    [dict setObject:[NSNumber numberWithDouble:self.doubleValue] forKey:@"doubleValue"];
          
    /* floatValue */
    [dict setObject:[NSNumber numberWithFloat:self.floatValue] forKey:@"floatValue"];
          
    /* boolValue */
    [dict setObject:[NSNumber numberWithBool:self.boolValue] forKey:@"boolValue"];
          
    /* intValue */
    [dict setObject:[NSNumber numberWithInteger:self.intValue] forKey:@"intValue"];
          
    /* longValue */
    [dict setObject:[NSNumber numberWithLongLong:self.longValue] forKey:@"longValue"];
          
    /* charValue */
    [dict setObject:[NSNumber numberWithUnsignedShort:self.charValue] forKey:@"charValue"];
          
    /* SimpleTestEntity List */
    if (self.simpleTestEntityList && ![self.simpleTestEntityList isKindOfClass:[NSNull class]]) {
        NSMutableArray *simpleTestEntityListArray = [NSMutableArray array];
        for (NSInteger i = 0; i < [self.simpleTestEntityList count]; i++) {
            PoCApi_APITEST_SimpleTestEntity *value = self.simpleTestEntityList[i];
            if (value && ![value isKindOfClass:[NSNull class]]) {
                if (value != nil) {
              [simpleTestEntityListArray addObject:[value serialize]];
              }
            }
        }
        [dict setObject:simpleTestEntityListArray forKey:@"simpleTestEntityList"];
    }
      
    /* simpleTestEntity */
    if (self.simpleTestEntity != nil) [dict setObject:[self.simpleTestEntity serialize] forKey:@"simpleTestEntity"];
          
    /* dynamic entity 本字段为动态数据类型, 可能类型为以下种类:SimpleTestEntity, BadResponse,  */
    if (self.dynamicEntity != nil) [dict setObject:[self.dynamicEntity serialize] forKey:@"dynamicEntity"];
          
    /* dynamic entity list 本字段为动态数据类型, 可能类型为以下种类:SimpleTestEntity, BadResponse, KeyValueList,  */
    if (self.dynamicEntityList && ![self.dynamicEntityList isKindOfClass:[NSNull class]]) {
        NSMutableArray *dynamicEntityListArray = [NSMutableArray array];
        for (NSInteger i = 0; i < [self.dynamicEntityList count]; i++) {
            PoCApi_DynamicEntity *value = self.dynamicEntityList[i];
            if (value && ![value isKindOfClass:[NSNull class]]) {
                if (value != nil) {
              [dynamicEntityListArray addObject:[value serialize]];
              }
            }
        }
        [dict setObject:dynamicEntityListArray forKey:@"dynamicEntityList"];
    }
      
    return dict;
}

@end
  
