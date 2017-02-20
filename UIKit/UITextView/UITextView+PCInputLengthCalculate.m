//
//  UITextView+PCInputLengthCalculate.m
//  TextViewCalculateLength
//
//  Created by 张培创 on 15/3/25.
//  Copyright (c) 2015年 com.duowan. All rights reserved.
//

#import "UITextView+PCInputLengthCalculate.h"

@implementation UITextView (PCInputLengthCalculate)

- (NSInteger)getInputLengthWithText:(NSString *)text
{
    NSInteger textLength = 0;
    //获取高亮部分
    UITextRange *selectedRange = [self markedTextRange];
    if (selectedRange) {
        NSString *newText = [self textInRange:selectedRange];
        textLength = (newText.length + 1) / 2 + [self offsetFromPosition:self.beginningOfDocument toPosition:selectedRange.start] + text.length;
    } else {
        textLength = self.text.length + text.length;
    }
    return textLength;
}

@end
