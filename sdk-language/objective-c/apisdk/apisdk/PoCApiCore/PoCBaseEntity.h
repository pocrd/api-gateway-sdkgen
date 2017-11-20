//
//  PoCBaseEntity.h
//  apisdk
//
//  Created by rendong on 2017/11/17.
//  Copyright © 2017年 pocrd.net. All rights reserved.
//

#ifndef PoCBaseEntity_h
#define PoCBaseEntity_h


#endif /* PoCBaseEntity_h */

@interface PoCBaseEntity : NSObject

// 反序列化函数，用于从json字符串反序列化本类型实例
+ (PoCBaseEntity *) deserializeWithJsonData:(NSData *) jsonData;

// 反序列化函数，用于从json节点对象反序列化本类型实例
+ (PoCBaseEntity *) deserialize:(NSDictionary *)json;

// 序列化函数，用于从对象生成数据字典
- (NSMutableDictionary *)serialize;

@end
