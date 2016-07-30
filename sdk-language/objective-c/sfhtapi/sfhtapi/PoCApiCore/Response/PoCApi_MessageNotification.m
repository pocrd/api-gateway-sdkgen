// Auto Generated.  DO NOT EDIT!

#import "PoCApi_MessageNotification.h"
#import "PoCLocalException.h"

@implementation PoCApi_MessageNotification

/*
 * 反序列化函数，用于从json字符串反序列化本类型实例
 */
+ (PoCApi_MessageNotification *) deserializeWithJsonData:(NSData *) jsonData
{

    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                             options:NSJSONReadingMutableLeaves
                                                               error:&error];
    if (error)
    {
        @throw [[PoCLocalException alloc] initWithCode:LocalExceptionCode_DESERIALIZE_ERR message:@"PoCApi_MessageNotification 反序列化失败"];
    }
    return [PoCApi_MessageNotification deserialize:jsonDict];
}

/*
 * 反序列化函数，用于从json节点对象反序列化本类型实例
 */
+ (PoCApi_MessageNotification *) deserialize:(NSDictionary *)json
{
      if (!([json isKindOfClass:[NSNull class]] || json == nil)) {
          PoCApi_MessageNotification *result = [[PoCApi_MessageNotification alloc] init];
      
        /* 消息内容 */
        result.content = [json objectForKey:@"content"];
        if ([result.content isKindOfClass:[NSNull class]]) { result.content = nil; }
              
        /* 消息Id */
        result.msgId = [json objectForKey:@"msgId"];
        if ([result.msgId isKindOfClass:[NSNull class]]) { result.msgId = nil; }
              
        /* 消息类型0: 系统消息,1:通知消息,2: 聊天消息,3:群消息,4:留言消息,5:普通聊天 控制消息 */
        result.type = [[json objectForKey:@"type"] integerValue];
              
        /* 消息内容类型 */
        result.subType = [[json objectForKey:@"subType"] integerValue];
              
        /* 发送方Id */
        result.fromUserId = [[json objectForKey:@"fromUserId"] longLongValue];
              
        /* 接收方Id */
        result.toUserId = [[json objectForKey:@"toUserId"] longLongValue];
              
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
    
    /* 消息内容 */
    if (self.content != nil) [dict setObject:self.content forKey:@"content"];
          
    /* 消息Id */
    if (self.msgId != nil) [dict setObject:self.msgId forKey:@"msgId"];
          
    /* 消息类型0: 系统消息,1:通知消息,2: 聊天消息,3:群消息,4:留言消息,5:普通聊天 控制消息 */
    [dict setObject:[NSNumber numberWithInteger:self.type] forKey:@"type"];
          
    /* 消息内容类型 */
    [dict setObject:[NSNumber numberWithInteger:self.subType] forKey:@"subType"];
          
    /* 发送方Id */
    [dict setObject:[NSNumber numberWithLongLong:self.fromUserId] forKey:@"fromUserId"];
          
    /* 接收方Id */
    [dict setObject:[NSNumber numberWithLongLong:self.toUserId] forKey:@"toUserId"];
          
    return dict;
}
@end
