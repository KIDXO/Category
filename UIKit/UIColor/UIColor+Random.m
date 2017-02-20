//
//  UIColor+Random.m
//  NULL
//
//  Created by NULL on Future.
//  Copyright © 2015年 NULL. All rights reserved.
//

#import "UIColor+Random.h"

@implementation UIColor (Random)

+ (UIColor *)colorWithRandom
{
    NSInteger red   = arc4random() % 255;
    NSInteger green = arc4random() % 255;
    NSInteger blue  = arc4random() % 255;
    UIColor *color = [UIColor colorWithRed:red  / 255.0f
                                     green:green/ 255.0f
                                      blue:blue / 255.0f
                                     alpha:1.0f];
    return color;
}

@end
