//
//  UIView+Find.h
//  NULL
//
//  Created by NULL on Future.
//  Copyright © 2015年 NULL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Find)
/**
 *  @brief  寻找视图中某个指定类名的子视图对象
 *
 *  @param  Class 视图类名
 *
 *  @return 返回视图对象
 */
- (id)findSubView:(Class)Class;

/**
 *  @brief  寻找视图中某个指定类名的父视图对象
 *
 *  @param  Class 视图类名
 *
 *  @return 返回视图对象
 */
- (id)findSuperView:(Class)Class;

/**
 *  @brief  寻找第一响应者
 *
 *  @return 第一响应者
 */
- (UIView *)findFirstResponder;

/**
 *  @brief  寻找第一响应者并且失去焦点
 *
 *  @return 是否失去焦点
 */
- (BOOL)findAndResignFirstResponder;

@end
