//
//  NSURL+Param.h
//  NULL
//
//  Created by NULL on Future.
//  Copyright © 2015年 NULL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURL (Param)

/**
 *  @brief  URL参数转字典
 *
 *  @return 参数转字典结果
 */
- (NSDictionary *)parameters;

/**
 *  @brief  根据参数名获取参数值
 *
 *  @param  parameterKey 参数名Key
 *
 *  @return 参数值
 */
- (NSString *)valueForParameter:(NSString *)parameterKey;

@end
