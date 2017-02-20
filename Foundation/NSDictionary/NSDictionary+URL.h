//
//  NSDictionary+URL.h
//  NULL
//
//  Created by NULL on Future.
//  Copyright © 2015年 NULL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (URL)

/**
 *  @brief  将url参数转换成NSDictionary
 *
 *  @param  query url参数
 *
 *  @return NSDictionary
 */
+ (NSDictionary *)dictionaryWithURLQuery:(NSString *)query;

/**
 *  @brief  将NSDictionary转换成url参数
 *
 *  @return NSString
 */
- (NSString *)URLQueryString;

@end
