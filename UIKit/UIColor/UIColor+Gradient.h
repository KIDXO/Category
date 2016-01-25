//
//  UIColor+Gradient.h
//  KID
//
//  Created by KID on Future.
//  Copyright © 2015年 KID. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Gradient)

/**
 *  @brief  渐变颜色
 *
 *  @param  c1      开始颜色
 *  @param  c2      结束颜色
 *  @param  height  渐变高度
 *
 *  @return 渐变颜色
 */
+ (UIColor *)ColorGradientFromColor:(UIColor *)c1 toColor:(UIColor *)c2 height:(int)height;

@end
