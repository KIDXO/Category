//
//  UIWebView+Style.m
//  NULL
//
//  Created by NULL on Future.
//  Copyright © 2015年 NULL. All rights reserved.
//

#import "UIWebView+Style.h"

@implementation UIWebView (Style)

- (void)setShadowViewHidden:(BOOL)b
{
    for (UIView *aView in self.subviews) {
        if ([aView isKindOfClass:[UIScrollView class]]) {
            [(UIScrollView *)aView setShowsHorizontalScrollIndicator:NO];
            for (UIView *shadowView in aView.subviews) {
                if ([shadowView isKindOfClass:[UIImageView class]]) {
                    shadowView.hidden = b;
                }
            }
        }
    }
}

- (void)setShowsHorizontalScrollIndicator:(BOOL)b
{
    for (UIView *aView in self.subviews) {
        if ([aView isKindOfClass:[UIScrollView class]]) {
            [(UIScrollView *)aView setShowsHorizontalScrollIndicator:b];
        }
    }
}

- (void)setShowsVerticalScrollIndicator:(BOOL)b
{
    for (UIView *aView in self.subviews) {
        if ([aView isKindOfClass:[UIScrollView class]]) {
            [(UIScrollView *)aView setShowsVerticalScrollIndicator:b];
        }
    }
}

- (void)makeTransparent
{
    self.backgroundColor = [UIColor clearColor];
    self.opaque = NO;
}

- (void)makeTransparentAndRemoveShadow
{
    [self makeTransparent];
    [self setShadowViewHidden:YES];
}

@end
