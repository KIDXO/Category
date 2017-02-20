//
//  UINavigationController+StackManager.h
//  NULL
//
//  Created by NULL on Future.
//  Copyright © 2015年 NULL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (StackManager)

/**
 *  @brief  寻找导航控制器中的某个视图控制器对象
 *
 *  @param  Class 视图控制器类名
 *
 *  @return 返回视图控制器对象
 */
- (id)findViewController:(NSString *)Class;

/**
 *  @brief  判断是否只有一个视图控制器
 *
 *  @return 返回是否只有一个视图控制器
 */
- (BOOL)isOnlyContainRootViewController;

/**
 *  @brief  返回根视图控制器
 *
 *  @return 返回根视图控制器
 */
- (UIViewController *)rootViewController;

/**
 *  @brief  返回指定类名的视图控制器
 *
 *  @param  class    指定类名
 *  @param  animated 是否动画
 *
 *  @return 返回之后的视图控制器
 */
- (NSArray *)popToViewControllerWithClass:(NSString*)Class animated:(BOOL)animated;

/**
 *  @brief  返回指定层级的视图控制器
 *
 *  @param  level    指定层级
 *  @param  animated 是否动画
 *
 *  @return 返回之后的视图控制器
 */
- (NSArray *)popToViewControllerWithLevel:(NSInteger)Level animated:(BOOL)animated;

@end
