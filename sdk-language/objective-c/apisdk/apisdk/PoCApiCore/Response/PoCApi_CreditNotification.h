// Auto Generated.  DO NOT EDIT!



#import "PoCBaseEntity.h"

@interface PoCApi_CreditNotification : PoCBaseEntity
/* 描述,为何送积分 */
@property(nonatomic, strong) NSString *description;

/* 积分值 */
@property(nonatomic, assign) long long credit;

/* 提示,送了多少积分 */
@property(nonatomic, strong) NSString *notification;


// 反序列化函数，用于从json字符串反序列化本类型实例
+ (PoCApi_CreditNotification *) deserializeWithJsonData:(NSData *) jsonData;

// 反序列化函数，用于从json节点对象反序列化本类型实例
+ (PoCApi_CreditNotification *) deserialize:(NSDictionary *)json;

// 序列化函数，用于从对象生成数据字典
- (NSMutableDictionary *) serialize;

@end
