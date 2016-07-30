#import "PoCLocalException.h"

@implementation PoCLocalException

- (id) initWithCode:(NSInteger)code
{
    if (self = [super initWithName:@"" reason:@"" userInfo:nil])
    {
        _code = code;
    }
    return self;
}

- (id) initWithCode:(NSInteger)code message:(NSString *)msg
{
    if (self = [super initWithName:@"" reason:msg userInfo:nil])
    {
        _code = code;
    }
    return self;
}
- (id) initWithCode:(NSInteger)code message:(NSString *)msg exception:(NSException *)e
{
    if (self = [super initWithName:[e name] reason:e.reason userInfo:e.userInfo])
    {
        _code = code;
    }
    return self;
}

@end
