// Auto Generated.  DO NOT EDIT!


@class SFApi_KeyValuePair;

@interface SFApi_KeyValueList : NSObject

/* 键值对列表 */
@property (nonatomic, strong) NSMutableArray *keyValue;
    

// 反序列化函数，用于从json字符串反序列化本类型实例
+ (SFApi_KeyValueList *) deserializeWithJsonData:(NSData *) jsonData;

// 反序列化函数，用于从json节点对象反序列化本类型实例
+ (SFApi_KeyValueList *) deserialize:(NSDictionary *)json;

// 序列化函数，用于从对象生成数据字典
- (NSMutableDictionary *) serialize;

@end