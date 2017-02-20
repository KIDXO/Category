//
//  UIButton+BackgroundColor.h
//  NULL
//
//  Created by NULL on Future.
//  Copyright © 2015年 NULL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (BackgroundColor)

/**
 *  @brief  设置按钮背景颜色
 *
 *  @param  color   背景颜色
 *  @param  state   按钮状态
 */
- (void)setBackgroundColor:(UIColor *)color forState:(UIControlState)state;

@end
