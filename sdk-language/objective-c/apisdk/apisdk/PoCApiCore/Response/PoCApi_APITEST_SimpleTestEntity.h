// Auto Generated.  DO NOT EDIT!



#import "PoCBaseEntity.h"

@interface PoCApi_APITEST_SimpleTestEntity : PoCBaseEntity
/* string value */
@property(nonatomic, strong) NSString *strValue;

/* int array */
@property(nonatomic, strong) NSMutableArray *intArray;
    

// 反序列化函数，用于从json字符串反序列化本类型实例
+ (PoCApi_APITEST_SimpleTestEntity *) deserializeWithJsonData:(NSData *) jsonData;

// 反序列化函数，用于从json节点对象反序列化本类型实例
+ (PoCApi_APITEST_SimpleTestEntity *) deserialize:(NSDictionary *)json;

// 序列化函数，用于从对象生成数据字典
- (NSMutableDictionary *) serialize;

@end
