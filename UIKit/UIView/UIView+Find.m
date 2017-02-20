//
//  UIView+Find.m
//  NULL
//
//  Created by NULL on Future.
//  Copyright © 2015年 NULL. All rights reserved.
//

#import "UIView+Find.h"

@implementation UIView (Find)

- (id)findSubView:(Class)Class
{
    for (id subView in self.subviews) {
        if ([subView isKindOfClass:Class]) {
            return subView;
        }
    }
    return nil;
}

- (id)findSuperView:(Class)Class
{
    if (self == nil) {
        return nil;
    }
    else if (self.superview == nil) {
        return nil;
    }
    else if ([self.superview isKindOfClass:Class]) {
        return self.superview;
    }
    else {
        return [self.superview findSuperView:Class];
    }
}

- (UIView *)findFirstResponder {
    
    if (([self isKindOfClass:[UITextField class]] ||
         [self isKindOfClass:[UITextView class]]) &&
         (self.isFirstResponder)) {
        return self;
    }
    
    for (UIView *v in self.subviews) {
        UIView *fv = [v findFirstResponder];
        if (fv) {
            return fv;
        }
    }
    
    return nil;
}

- (BOOL)findAndResignFirstResponder
{
    if (self.isFirstResponder) {
        [self resignFirstResponder];
        return YES;
    }
    
    for (UIView *v in self.subviews) {
        if ([v findAndResignFirstResponder]) {
            return YES;
        }
    }
    
    return NO;
}

@end
