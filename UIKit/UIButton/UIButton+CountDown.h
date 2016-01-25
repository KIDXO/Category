//
//  UIButton+CountDown.h
//  KID
//
//  Created by KID on Future.
//  Copyright © 2015年 KID. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (CountDown)

/**
 *  @brief  设置按钮倒计时
 *
 *  @param  timeout   背景颜色
 *  @param  state   按钮状态
 */
- (void)countDown:(NSInteger)duration title:(NSString *)tittle waitTittle:(NSString *)waitTittle;

@end
