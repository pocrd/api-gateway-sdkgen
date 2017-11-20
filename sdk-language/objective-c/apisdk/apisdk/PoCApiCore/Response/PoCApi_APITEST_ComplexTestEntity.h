// Auto Generated.  DO NOT EDIT!


@class PoCApi_APITEST_SimpleTestEntity;
@class PoCApi_APITEST_SimpleTestEntity;
@class PoCApi_DynamicEntity;
@class PoCApi_DynamicEntity;

#import "PoCBaseEntity.h"

@interface PoCApi_APITEST_ComplexTestEntity : PoCBaseEntity
/* strValue */
@property(nonatomic, strong) NSString *strValue;

/* shortValue */
@property(nonatomic, assign) short shortValue;

/* byteValue */
@property(nonatomic, assign) char byteValue;

/* doubleValue */
@property(nonatomic, assign) double doubleValue;

/* floatValue */
@property(nonatomic, assign) float floatValue;

/* boolValue */
@property(nonatomic, assign) BOOL boolValue;

/* intValue */
@property(nonatomic, assign) NSInteger intValue;

/* longValue */
@property(nonatomic, assign) long long longValue;

/* charValue */
@property(nonatomic, assign) unsigned short charValue;

/* SimpleTestEntity List */
@property(nonatomic, strong) NSMutableArray *simpleTestEntityList;
    
/* simpleTestEntity */
@property(nonatomic, strong) PoCApi_APITEST_SimpleTestEntity *simpleTestEntity;

/* dynamic entity 本字段为动态数据类型, 可能类型为以下种类:SimpleTestEntity, BadResponse,  */
@property(nonatomic, strong) PoCApi_DynamicEntity *dynamicEntity;

/* dynamic entity list 本字段为动态数据类型, 可能类型为以下种类:SimpleTestEntity, BadResponse, KeyValueList,  */
@property(nonatomic, strong) NSMutableArray *dynamicEntityList;
    

// 反序列化函数，用于从json字符串反序列化本类型实例
+ (PoCApi_APITEST_ComplexTestEntity *) deserializeWithJsonData:(NSData *) jsonData;

// 反序列化函数，用于从json节点对象反序列化本类型实例
+ (PoCApi_APITEST_ComplexTestEntity *) deserialize:(NSDictionary *)json;

// 序列化函数，用于从对象生成数据字典
- (NSMutableDictionary *) serialize;

@end
