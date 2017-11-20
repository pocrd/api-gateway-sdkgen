// Auto Generated.  DO NOT EDIT!


@class PoCApi_APITEST_ComplexTestEntity;

#import "PoCBaseEntity.h"

@interface PoCApi_APITEST_ComplexTestEntity_ArrayResp : PoCBaseEntity
/* ComplexTestEntity */
@property(nonatomic, strong) NSMutableArray *value;
    

// 反序列化函数，用于从json字符串反序列化本类型实例
+ (PoCApi_APITEST_ComplexTestEntity_ArrayResp *) deserializeWithJsonData:(NSData *) jsonData;

// 反序列化函数，用于从json节点对象反序列化本类型实例
+ (PoCApi_APITEST_ComplexTestEntity_ArrayResp *) deserialize:(NSDictionary *)json;

// 序列化函数，用于从对象生成数据字典
- (NSMutableDictionary *) serialize;

@end
