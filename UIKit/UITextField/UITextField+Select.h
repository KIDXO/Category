//
//  UITextField+Select.h
//  NULL
//
//  Created by NULL on Future.
//  Copyright © 2015年 NULL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (Select)

/**
 *  @brief  选中所有文字
 */
- (void)selectAll;

/**
 *  @brief  选中指定范围的文字
 *
 *  @param  range NSRange范围
 */
- (void)selectedRange:(NSRange)range;

/**
 *  @brief  当前选中的字符范围
 *
 *  @return NSRange范围
 */
- (NSRange)selectedRange;

@end
