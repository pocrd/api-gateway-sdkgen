#import "SFResponse.h"
#import "SFLocalException.h"

@implementation SFResponse

- (id)init
{
    self = [super init];
    if (self) {
        _code = LocalExceptionCode_NOT_INIT;
    }
    return self;
}

// 序列化函数，用于从对象生成数据字典
- (NSMutableDictionary *) serialize
{
    return nil;
}

@end
