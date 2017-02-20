//
//  UIWindow+Hierarchy.h
//  NULL
//
//  Created by NULL on Future.
//  Copyright © 2015年 NULL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIWindow (Hierarchy)

/**
 *  @brief  寻找窗口中的顶层视图对象
 *
 *  @return 返回视图对象
 */
- (UIViewController *)topViewController;

/**
 *  @brief  寻找窗口中的当前视图对象
 *
 *  @return 返回视图对象
 */
- (UIViewController *)currentViewController;

@end

