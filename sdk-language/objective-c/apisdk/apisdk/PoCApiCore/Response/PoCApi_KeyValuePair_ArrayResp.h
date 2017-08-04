// Auto Generated.  DO NOT EDIT!


@class PoCApi_KeyValuePair;

@interface PoCApi_KeyValuePair_ArrayResp : NSObject

/* 键值对 */
@property(nonatomic, strong) NSMutableArray *value;
    

// 反序列化函数，用于从json字符串反序列化本类型实例
+ (PoCApi_KeyValuePair_ArrayResp *) deserializeWithJsonData:(NSData *) jsonData;

// 反序列化函数，用于从json节点对象反序列化本类型实例
+ (PoCApi_KeyValuePair_ArrayResp *) deserialize:(NSDictionary *)json;

// 序列化函数，用于从对象生成数据字典
- (NSMutableDictionary *) serialize;

@end
