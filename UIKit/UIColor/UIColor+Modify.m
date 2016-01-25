//
//  UIColor+Modify.m
//  KID
//
//  Created by KID on Future.
//  Copyright © 2015年 KID. All rights reserved.
//

#import "UIColor+Modify.h"

@implementation UIColor (Modify)

- (UIColor *)colorWithInverted
{
    NSArray *components = [self componentArray];
    return [UIColor colorWithRed:1 - [components[0] doubleValue]
                           green:1 - [components[1] doubleValue]
                            blue:1 - [components[2] doubleValue]
                           alpha:    [components[3] doubleValue]];
}

- (UIColor *)colorWithTranslucency
{
    CGFloat hue = 0, saturation = 0, brightness = 0, alpha = 0;
    [self getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha];
    return [UIColor colorWithHue:hue
                      saturation:saturation * 1.158
                      brightness:brightness * 0.95
                           alpha:alpha];
}

- (UIColor *)colorWithLighten:(CGFloat)lighten
{
    CGFloat hue = 0, saturation = 0, brightness = 0, alpha = 0;
    [self getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha];
    return [UIColor colorWithHue:hue
                      saturation:saturation * (1 - lighten)
                      brightness:brightness * (1 + lighten)
                           alpha:alpha];
}

- (UIColor *)colorWithDarken:(CGFloat)darken
{
    CGFloat hue = 0, saturation = 0, brightness = 0, alpha = 0;
    [self getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha];
    return [UIColor colorWithHue:hue
                      saturation:saturation * (1 + darken)
                      brightness:brightness * (1 - darken)
                           alpha:alpha];
}

- (NSArray *)componentArray
{
    CGFloat red, green, blue, alpha;
    const CGFloat *components = CGColorGetComponents([self CGColor]);
    if(CGColorGetNumberOfComponents([self CGColor]) == 2) {
        red     = components[0];
        green   = components[0];
        blue    = components[0];
        alpha   = components[1];
    }
    else {
        red     = components[0];
        green   = components[1];
        blue    = components[2];
        alpha   = components[3];
    }
    return @[@(red), @(green), @(blue), @(alpha)];
}

@end
