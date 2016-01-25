//
//  UIColor+HEX.h
//  KID
//
//  Created by KID on Future.
//  Copyright © 2015年 KID. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (HEX)

/**
 *  @brief  获取十六进制颜色
 *
 *  @param  hex     色值
 *
 *  @return 颜色
 */
+ (UIColor *)colorWithHex:(UInt32)hex;

/**
 *  @brief  获取十六进制颜色
 *
 *  @param  hex     色值
 *  @param  alpha   透明度
 *
 *  @return 颜色
 */
+ (UIColor *)colorWithHex:(UInt32)hex alpha:(CGFloat)alpha;

/**
 *  @brief  获取十六进制颜色
 *
 *  @param  strHex  色值
 *
 *  @return 颜色
 */
+ (UIColor *)colorWithHexString:(NSString *)strHex;

/**
 *  @brief  获取RGB颜色
 *
 *  @param  red     红色
 *  @param  green   绿色
 *  @param  blue    蓝色
 *
 *  @return 颜色
 */
+ (UIColor *)colorWithWholeRed:(CGFloat)red
                         green:(CGFloat)green
                          blue:(CGFloat)blue;

/**
 *  @brief  获取RGB颜色
 *
 *  @param  red     红色
 *  @param  green   绿色
 *  @param  blue    蓝色
 *  @param  alpha   透明度
 *
 *  @return 颜色
 */
+ (UIColor *)colorWithWholeRed:(CGFloat)red
                         green:(CGFloat)green
                          blue:(CGFloat)blue
                         alpha:(CGFloat)alpha;

/**
 *  @brief  获取十六进制色值
 *
 *  @return 色值
 */
- (NSString *)HEXString;

@end
