// Auto Generated.  DO NOT EDIT!



@interface PoCApi_CallState : NSObject

/* 返回值 */
@property (nonatomic, assign) NSInteger code;

/* 数据长度 */
@property (nonatomic, assign) NSInteger length;

/* 返回信息 */
@property (nonatomic, strong) NSString *msg;


// 反序列化函数，用于从json字符串反序列化本类型实例
+ (PoCApi_CallState *) deserializeWithJsonData:(NSData *) jsonData;

// 反序列化函数，用于从json节点对象反序列化本类型实例
+ (PoCApi_CallState *) deserialize:(NSDictionary *)json;

// 序列化函数，用于从对象生成数据字典
- (NSMutableDictionary *) serialize;

@end
