#import <Foundation/Foundation.h>

@interface PoCFileResp : NSObject

// 字符串型返回值
@property(nonatomic, strong) NSString *value;
// 字符串型Key
@property(nonatomic, strong) NSString *key;

// 反序列化函数，用于从json字符串反序列化本类型实例
+ (PoCFileResp *) deserializeWithJsonData:(NSData *) jsonData;

// 反序列化函数，用于从json节点对象反序列化本类型实例
+ (PoCFileResp *) deserialize:(NSDictionary *)json;

// 序列化函数，用于从对象生成数据字典
- (NSMutableDictionary *) serialize;

@end
