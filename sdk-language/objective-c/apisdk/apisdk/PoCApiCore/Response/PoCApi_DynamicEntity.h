// Auto Generated.  DO NOT EDIT!



#import "PoCBaseEntity.h"

@interface PoCApi_DynamicEntity : PoCBaseEntity
@property(nonatomic, strong) PoCBaseEntity *entity;

/* 动态类型的类型名 */
@property(nonatomic, strong) NSString *typeName;


// 反序列化函数，用于从json字符串反序列化本类型实例
+ (PoCApi_DynamicEntity *) deserializeWithJsonData:(NSData *) jsonData;

// 反序列化函数，用于从json节点对象反序列化本类型实例
+ (PoCApi_DynamicEntity *) deserialize:(NSDictionary *)json;

// 序列化函数，用于从对象生成数据字典
- (NSMutableDictionary *) serialize;

@end
