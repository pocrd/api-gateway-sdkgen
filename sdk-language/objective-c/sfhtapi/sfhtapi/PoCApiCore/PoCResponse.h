#import <Foundation/Foundation.h>

@interface PoCResponse : NSObject

@property (nonatomic, assign)NSInteger code;
@property (nonatomic, strong)NSString *message;
@property (nonatomic, strong)id result;
@property (nonatomic, assign)NSInteger length;


// 序列化函数，用于从对象生成数据字典
- (NSMutableDictionary *) serialize;

@end
