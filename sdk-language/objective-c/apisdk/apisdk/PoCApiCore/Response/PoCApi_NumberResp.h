// Auto Generated.  DO NOT EDIT!



@interface PoCApi_NumberResp : NSObject

/* 数值型返回值，包含byte, char, short, int */
@property (nonatomic, assign) NSInteger value;


// 反序列化函数，用于从json字符串反序列化本类型实例
+ (PoCApi_NumberResp *) deserializeWithJsonData:(NSData *) jsonData;

// 反序列化函数，用于从json节点对象反序列化本类型实例
+ (PoCApi_NumberResp *) deserialize:(NSDictionary *)json;

// 序列化函数，用于从对象生成数据字典
- (NSMutableDictionary *) serialize;

@end