//
//  UIView+Screenshot.h
//  NULL
//
//  Created by NULL on Future.
//  Copyright © 2015年 NULL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Screenshot)

/**
 *  @brief  view截图
 *
 *  @return 截图
 */
- (UIImage *)screenshot;

/**
 *  @brief  view截图
 *
 *  @param  maxWidth 限制缩放的最大宽度
 *
 *  @return 截图
 */
- (UIImage *)screenshot:(CGFloat)maxWidth;

@end
