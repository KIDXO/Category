//
//  UINavigationItem+Lock.h
//  NULL
//
//  Created by NULL on Future.
//  Copyright © 2015年 NULL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationItem (Lock)

/**
 *  @brief 锁定LeftItem
 *
 *  @param lock 是否锁定
 */
- (void)lockLeftItem:(BOOL)lock;

/**
 *  @brief 锁定RightItem
 *
 *  @param lock 是否锁定
 */
- (void)lockRightItem:(BOOL)lock;

@end
