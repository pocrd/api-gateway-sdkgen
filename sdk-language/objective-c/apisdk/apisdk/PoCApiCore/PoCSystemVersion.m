#import "PoCSystemVersion.h"
#import <UIKit/UIKit.h>

@implementation PoCSystemVersion

+ (NSString *) systemVersion
{
#if TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE
    return [[UIDevice currentDevice] systemVersion];
#else
    NSDictionary *systemVersionPlist = [NSDictionary dictionaryWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
    NSString *version = [systemVersionPlist objectForKey:@"ProductVersion"];
    return version;
#endif
}

#if TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE
+ (BOOL) isios4
{
	NSString *systemVersion = [[self class] systemVersion];
	if ([systemVersion hasPrefix:@"4."])
    {
		return YES;
	}
	return NO;
}

+ (BOOL) is3_1
{
    return SYSTEM_VERSION_EQUAL_TO(@"3.1");
}

+ (BOOL) is3_2
{
	return SYSTEM_VERSION_EQUAL_TO(@"3.2");
}

+ (BOOL) is4_0
{
	return SYSTEM_VERSION_EQUAL_TO(@"4.0");
}

+ (BOOL) is4_1
{
	return SYSTEM_VERSION_EQUAL_TO(@"4.1");
}

+ (BOOL) is4_2
{
	return SYSTEM_VERSION_EQUAL_TO(@"4.2");
}

+ (BOOL) is4_2OrLater
{
    return SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"4.2");
}

+ (BOOL) isios4OrLater
{
    return SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"4.0");
}

+ (BOOL) is5_0OrLater
{
    return SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"5.0");
}

+ (BOOL) is6_0OrLater
{
    return SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"6.0");
}

+ (BOOL) is7_0OrLater
{
    return SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"7.0");
}

#else
// Returns YES if running on 10.4, NO otherwise.
+ (BOOL) isTiger
{
    return [[self systemVersion] hasPrefix:@"10.4"];
}
// Returns YES if running on 10.5, NO otherwise.
+ (BOOL) isLeopard
{
    return [[self systemVersion] hasPrefix:@"10.5"];
}
// Returns YES if running on 10.6, NO otherwise.
+ (BOOL) isSnowLeopard
{
    return [[self systemVersion] hasPrefix:@"10.6"];
}
// Returns YES if running on 10.7, NO otherwise.
+ (BOOL) isLion
{
    return [[self systemVersion] hasPrefix:@"10.7"];
}
// Returns YES if running on 10.8, NO otherwise.
+ (BOOL) isMountianLion
{
    return [[self systemVersion] hasPrefix:@"10.8"];
}
// Returns a YES/NO if the system is 10.4 or better
+ (BOOL) isTigerOrGreater
{
    return SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"10.4");
}
// Returns a YES/NO if the system is 10.5 or better
+ (BOOL) isLeopardOrGreater
{
    return SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"10.5");
}
// Returns a YES/NO if the system is 10.6 or better
+ (BOOL) isSnowLeopardOrGreater
{
    return SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"10.6");
}
// Returns a YES/NO if the system is 10.7 or better
+ (BOOL) isLionOrGreater
{
    return SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"10.7");
}
// Returns a YES/NO if the system is 10.8 or better
+ (BOOL) isMountainLionOrGreater
{
    return SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"10.8");
}
#endif

@end
