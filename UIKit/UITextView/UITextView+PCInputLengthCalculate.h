//
//  UITextView+PCInputLengthCalculate.h
//  TextViewCalculateLength
//
//  Created by 张培创 on 15/3/25.
//  Copyright (c) 2015年 com.duowan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (PCInputLengthCalculate)

/**
 *  用来捕获输入时的字符数的
 *
 *  @param text
 在-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text使用时需要传入replacementText用于计算长度，- (void)textViewDidChange:(UITextView *)textView中使用不需要传入
 *
 *  @return 字符长度
 */
- (NSInteger)getInputLengthWithText:(NSString *)text;

@end
