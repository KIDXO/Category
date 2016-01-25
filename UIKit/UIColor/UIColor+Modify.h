//
//  UIColor+Modify.h
//  KID
//
//  Created by KID on Future.
//  Copyright © 2015年 KID. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Modify)

/**
 *  @brief  获取反向颜色
 *
 *  @return 颜色
 */
- (UIColor *)colorWithInverted;

/**
 *  @brief  获取透明颜色
 *
 *  @return 颜色
 */
- (UIColor *)colorWithTranslucency;

/**
 *  @brief  获取高亮颜色
 *
 *  @param  lighten 亮度
 *
 *  @return 颜色
 */
- (UIColor *)colorWithLighten:(CGFloat)lighten;

/**
 *  @brief  获取低暗颜色
 *
 *  @param  darken  暗度
 *
 *  @return 颜色
 */
- (UIColor *)colorWithDarken:(CGFloat)darken;

@end
