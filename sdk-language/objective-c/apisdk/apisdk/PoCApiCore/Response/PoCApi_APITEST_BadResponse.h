// Auto Generated.  DO NOT EDIT!



#import "PoCBaseEntity.h"

@interface PoCApi_APITEST_BadResponse : PoCBaseEntity
/* str */
@property(nonatomic, strong) NSString *str;


// 反序列化函数，用于从json字符串反序列化本类型实例
+ (PoCApi_APITEST_BadResponse *) deserializeWithJsonData:(NSData *) jsonData;

// 反序列化函数，用于从json节点对象反序列化本类型实例
+ (PoCApi_APITEST_BadResponse *) deserialize:(NSDictionary *)json;

// 序列化函数，用于从对象生成数据字典
- (NSMutableDictionary *) serialize;

@end
