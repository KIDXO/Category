//
//  UIButton+BackgroundColor.m
//  KID
//
//  Created by KID on Future.
//  Copyright © 2015年 KID. All rights reserved.
//

#import "UIButton+BackgroundColor.h"

@implementation UIButton (BackgroundColor)
/**
 *  @brief  设置按钮背景颜色
 *
 *  @param  color   背景颜色
 *  @param  state   按钮状态
 */
- (void)setBackgroundColor:(UIColor *)color forState:(UIControlState)state
{
    [self setBackgroundImage:[self imageWithColor:color] forState:state];
}

/**
 *  @brief  生成纯色图片
 *
 *  @param  color 颜色
 *
 *  @return 图片
 */
- (UIImage *)imageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
    
}

@end
