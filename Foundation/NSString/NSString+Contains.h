//
//  NSString+Contains.h
//  NULL
//
//  Created by NULL on Future.
//  Copyright © 2015年 NULL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Contains)

/**
 *  @brief  判断URL中是否包含中文
 *
 *  @return 是否包含中文
 */
- (BOOL)isContainChinese;

/**
 *  @brief  判断URL中是否包含空格
 *
 *  @return 是否包含空格
 */
- (BOOL)isContainBlank;

/**
 *  @brief  是否包含字符串
 *
 *  @param  string 字符串
 *
 *  @return 是否包含字符串
 */
- (BOOL)isContainString:(NSString *)string;

/**
 *  @brief  是否包含字符集
 *
 *  @param  set 字符集
 *
 *  @return 是否包含字符集
 */
- (BOOL)isContainCharacterSet:(NSCharacterSet *)set;

/**
 *  @brief  Unicode编码的字符串转成NSString
 *
 *  @return Unicode编码的字符串转成NSString
 */
- (NSString *)makeUnicodeToString;

/**
 *  @brief  获取字符数量
 */
- (int)wordsCount;

@end
