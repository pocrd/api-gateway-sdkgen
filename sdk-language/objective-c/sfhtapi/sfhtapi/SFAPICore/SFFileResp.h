//
//  SFFileResp.h
//  LiuLian
//
//  Created by 肖信波 on 14-11-15.
//  Copyright (c) 2014年 MacBook Air. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SFFileResp : NSObject

// 字符串型返回值
@property (nonatomic, strong) NSString *value;
// 字符串型Key
@property (nonatomic, strong) NSString *key;

// 反序列化函数，用于从json字符串反序列化本类型实例
+ (SFFileResp *) deserializeWithJsonData:(NSData *) jsonData;

// 反序列化函数，用于从json节点对象反序列化本类型实例
+ (SFFileResp *) deserialize:(NSDictionary *)json;

// 序列化函数，用于从对象生成数据字典
- (NSMutableDictionary *) serialize;

@end
