// Auto Generated.  DO NOT EDIT!



@interface PoCApi_KeyValuePair : NSObject

/* 键 */
@property(nonatomic, strong) NSString *key;

/* 值 */
@property(nonatomic, strong) NSString *value;


// 反序列化函数，用于从json字符串反序列化本类型实例
+ (PoCApi_KeyValuePair *) deserializeWithJsonData:(NSData *) jsonData;

// 反序列化函数，用于从json节点对象反序列化本类型实例
+ (PoCApi_KeyValuePair *) deserialize:(NSDictionary *)json;

// 序列化函数，用于从对象生成数据字典
- (NSMutableDictionary *) serialize;

@end
