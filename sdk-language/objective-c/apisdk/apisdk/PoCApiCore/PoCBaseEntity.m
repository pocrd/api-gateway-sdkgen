//
//  PoCBaseEntity.m
//  apisdk
//
//  Created by rendong on 2017/11/17.
//  Copyright © 2017年 pocrd.net. All rights reserved.
//

#import "PoCBaseEntity.h"

@implementation PoCBaseEntity

/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (PoCBaseEntity *) deserializeWithJsonData:(NSData *) jsonData
{
    return [PoCBaseEntity new];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (PoCBaseEntity *) deserialize:(NSDictionary *)json
{
    return [PoCBaseEntity new];
}

/*
 * 序列化函数，用于从对象生成数据字典
 */
- (NSMutableDictionary *) serialize
{
    return [NSMutableDictionary dictionary];
}

@end
