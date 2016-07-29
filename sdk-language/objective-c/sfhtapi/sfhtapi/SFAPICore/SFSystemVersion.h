#import <Foundation/Foundation.h>

#if TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE
// system version compare on iOS
#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[SFSystemVersion systemVersion] compare:v options:NSNumericSearch|NSCaseInsensitiveSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[SFSystemVersion systemVersion] compare:v options:NSNumericSearch|NSCaseInsensitiveSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[SFSystemVersion systemVersion] compare:v options:NSNumericSearch|NSCaseInsensitiveSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[SFSystemVersion systemVersion] compare:v options:NSNumericSearch|NSCaseInsensitiveSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[SFSystemVersion systemVersion] compare:v options:NSNumericSearch|NSCaseInsensitiveSearch] != NSOrderedDescending)

#else
// system version compare on Mac OS X
#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[SFSystemVersion systemVersion] compare:v options:NSNumericSearch|NSCaseInsensitiveSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[SFSystemVersion systemVersion] compare:v options:NSNumericSearch|NSCaseInsensitiveSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[SFSystemVersion systemVersion] compare:v options:NSNumericSearch|NSCaseInsensitiveSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[SFSystemVersion systemVersion] compare:v options:NSNumericSearch|NSCaseInsensitiveSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[SFSystemVersion systemVersion] compare:v options:NSNumericSearch|NSCaseInsensitiveSearch] != NSOrderedDescending)

#endif

@interface SFSystemVersion : NSObject

+ (NSString *) systemVersion;

#if TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE
+ (BOOL) isios4;
+ (BOOL) is3_1;
+ (BOOL) is3_2;
+ (BOOL) is4_0;
+ (BOOL) is4_1;
+ (BOOL) is4_2;
+ (BOOL) isios4OrLater;
+ (BOOL) is4_2OrLater;
+ (BOOL) is5_0OrLater;
+ (BOOL) is6_0OrLater;
+ (BOOL) is7_0OrLater;

#else
// Returns YES if running on 10.4, NO otherwise.
+ (BOOL) isTiger;
// Returns YES if running on 10.5, NO otherwise.
+ (BOOL) isLeopard;
// Returns YES if running on 10.6, NO otherwise.
+ (BOOL) isSnowLeopard;
// Returns YES if running on 10.7, NO otherwise.
+ (BOOL) isLion;
// Returns YES if running on 10.8, NO otherwise.
+ (BOOL) isMountianLion;
// Returns a YES/NO if the system is 10.4 or better
+ (BOOL) isTigerOrGreater;
// Returns a YES/NO if the system is 10.5 or better
+ (BOOL) isLeopardOrGreater;
// Returns a YES/NO if the system is 10.6 or better
+ (BOOL) isSnowLeopardOrGreater;
// Returns a YES/NO if the system is 10.7 or better
+ (BOOL) isLionOrGreater;
// Returns a YES/NO if the system is 10.8 or better
+ (BOOL) isMountainLionOrGreater;
#endif

@end
