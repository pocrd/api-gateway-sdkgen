// Auto Generated.  DO NOT EDIT!


@class PoCApi_CallState;
@class PoCApi_KeyValuePair;

@interface PoCApi_Response : NSObject

/* 当前服务端时间 */
@property (nonatomic, assign) long long systime;

/* 调用返回值 */
@property (nonatomic, assign) NSInteger code;

/* 调用标识符 */
@property (nonatomic, strong) NSString *cid;

/* 用作特定场景使用 */
@property (nonatomic, strong) NSString *data;

/* API调用状态，code的信息请参考ApiCode定义文件 */
@property (nonatomic, strong) NSMutableArray *stateList;
    
/* 服务端返回的通知事件集合 */
@property (nonatomic, strong) NSMutableArray *notificationList;
    

// 反序列化函数，用于从json字符串反序列化本类型实例
+ (PoCApi_Response *) deserializeWithJsonData:(NSData *) jsonData;

// 反序列化函数，用于从json节点对象反序列化本类型实例
+ (PoCApi_Response *) deserialize:(NSDictionary *)json;

// 序列化函数，用于从对象生成数据字典
- (NSMutableDictionary *) serialize;

@end