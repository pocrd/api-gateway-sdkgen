// Auto Generated.  DO NOT EDIT!



#import "PoCBaseEntity.h"

@interface PoCApi_DEMO_DemoEntity : PoCBaseEntity
/* id多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト */
@property(nonatomic, assign) NSInteger identify;

/* name多语言测试. 
en-us:multi-language test 
ja-jp:多言語テスト */
@property(nonatomic, strong) NSString *name;


// 反序列化函数，用于从json字符串反序列化本类型实例
+ (PoCApi_DEMO_DemoEntity *) deserializeWithJsonData:(NSData *) jsonData;

// 反序列化函数，用于从json节点对象反序列化本类型实例
+ (PoCApi_DEMO_DemoEntity *) deserialize:(NSDictionary *)json;

// 序列化函数，用于从对象生成数据字典
- (NSMutableDictionary *) serialize;

@end
