// Auto Generated.  DO NOT EDIT!



@interface PoCApi_BoolArrayResp : NSObject

/* 布尔类型数组返回值 */
@property (nonatomic, strong) NSMutableArray *value;
    

// 反序列化函数，用于从json字符串反序列化本类型实例
+ (PoCApi_BoolArrayResp *) deserializeWithJsonData:(NSData *) jsonData;

// 反序列化函数，用于从json节点对象反序列化本类型实例
+ (PoCApi_BoolArrayResp *) deserialize:(NSDictionary *)json;

// 序列化函数，用于从对象生成数据字典
- (NSMutableDictionary *) serialize;

@end
