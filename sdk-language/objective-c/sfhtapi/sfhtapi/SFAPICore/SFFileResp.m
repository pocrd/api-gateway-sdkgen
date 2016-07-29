//
//  SFFileResp.m
//  LiuLian
//
//  Created by 肖信波 on 14-11-15.
//  Copyright (c) 2014年 MacBook Air. All rights reserved.
//

#import "SFFileResp.h"
#import "SFLocalException.h"

@implementation SFFileResp

/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (SFFileResp *) deserializeWithJsonData:(NSData *) jsonData
{
    
    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[SFLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"SFFileResp 反序列化失败"];
    }
    return [SFFileResp deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (SFFileResp *) deserialize:(NSDictionary *)json
{
    if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
        SFFileResp *result = [[SFFileResp alloc] init];
        
        // 布尔类型返回值
        for (NSString *key in json.allKeys) {
            result.key = key;
            result.value = [json objectForKey:key];
        }

        return result;
    }
    return nil;
}

/*
 * 序列化函数，用于从对象生成数据字典
 */
- (NSMutableDictionary *) serialize
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    
    // 布尔类型返回值
    [dict setObject:self.value forKey:self.key];
    
    return dict;
}


@end
