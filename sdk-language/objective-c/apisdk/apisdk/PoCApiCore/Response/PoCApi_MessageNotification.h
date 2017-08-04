// Auto Generated.  DO NOT EDIT!



@interface PoCApi_MessageNotification : NSObject

/* 消息内容 */
@property(nonatomic, strong) NSString *content;

/* 消息Id */
@property(nonatomic, strong) NSString *msgId;

/* 消息类型0: 系统消息,1:通知消息,2: 聊天消息,3:群消息,4:留言消息,5:普通聊天 控制消息 */
@property(nonatomic, assign) NSInteger type;

/* 消息内容类型 */
@property(nonatomic, assign) NSInteger subType;

/* 发送方Id */
@property(nonatomic, assign) long long fromUserId;

/* 接收方Id */
@property(nonatomic, assign) long long toUserId;


// 反序列化函数，用于从json字符串反序列化本类型实例
+ (PoCApi_MessageNotification *) deserializeWithJsonData:(NSData *) jsonData;

// 反序列化函数，用于从json节点对象反序列化本类型实例
+ (PoCApi_MessageNotification *) deserialize:(NSDictionary *)json;

// 序列化函数，用于从对象生成数据字典
- (NSMutableDictionary *) serialize;

@end
