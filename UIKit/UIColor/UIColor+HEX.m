//
//  UIColor+HEX.m
//  KID
//
//  Created by KID on Future.
//  Copyright © 2015年 KID. All rights reserved.
//

#import "UIColor+HEX.h"

CGFloat colorComponentFrom(NSString *string, NSUInteger start, NSUInteger length)
{
    NSString *str = [string substringWithRange:NSMakeRange(start, length)];
    NSString *hex = length == 2 ? str : [NSString stringWithFormat: @"%@%@", str, str];
    
    unsigned component;
    [[NSScanner scannerWithString:hex] scanHexInt:&component];
    return component / 255.0;
}

@implementation UIColor (HEX)

+ (UIColor *)colorWithHex:(UInt32)hex
{
    return [UIColor colorWithHex:hex alpha:1];
}

+ (UIColor *)colorWithHex:(UInt32)hex alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:((hex >> 16) & 0xFF)/255.0
                           green:((hex >> 8)  & 0xFF)/255.0
                            blue: (hex        & 0xFF)/255.0
                           alpha:alpha];
}

+ (UIColor *)colorWithHexString:(NSString *)strHex
{
    CGFloat alpha, red, blue, green;
    
    NSString *strColor = [[strHex stringByReplacingOccurrencesOfString:@"#" withString:@""] uppercaseString];
    switch ([strColor length]) {
        case 3: // #RGB
            alpha = 1.0f;
            red   = colorComponentFrom(strColor, 0, 1);
            green = colorComponentFrom(strColor, 1, 1);
            blue  = colorComponentFrom(strColor, 2, 1);
            break;
            
        case 4: // #ARGB
            alpha = colorComponentFrom(strColor, 0, 1);
            red   = colorComponentFrom(strColor, 1, 1);
            green = colorComponentFrom(strColor, 2, 1);
            blue  = colorComponentFrom(strColor, 3, 1);
            break;
            
        case 6: // #RRGGBB
            alpha = 1.0f;
            red   = colorComponentFrom(strColor, 0, 2);
            green = colorComponentFrom(strColor, 2, 2);
            blue  = colorComponentFrom(strColor, 4, 2);
            break;
            
        case 8: // #AARRGGBB
            alpha = colorComponentFrom(strColor, 0, 2);
            red   = colorComponentFrom(strColor, 2, 2);
            green = colorComponentFrom(strColor, 4, 2);
            blue  = colorComponentFrom(strColor, 6, 2);
            break;
            
        default:
            return nil;
    }
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

+ (UIColor *)colorWithWholeRed:(CGFloat)red
                         green:(CGFloat)green
                          blue:(CGFloat)blue
{
    return [self colorWithWholeRed:red
                             green:green
                              blue:blue
                             alpha:1.0];
}

+ (UIColor *)colorWithWholeRed:(CGFloat)red
                         green:(CGFloat)green
                          blue:(CGFloat)blue
                         alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:red    / 255.f
                           green:green  / 255.f
                            blue:blue   / 255.f
                           alpha:alpha];
}

- (NSString *)HEXString
{
    UIColor *color = self;
    if (CGColorGetNumberOfComponents(color.CGColor) < 4) {
        const CGFloat *components = CGColorGetComponents(color.CGColor);
        color = [UIColor colorWithRed:components[0]
                                green:components[0]
                                 blue:components[0]
                                alpha:components[1]];
    }
    if (CGColorSpaceGetModel(CGColorGetColorSpace(color.CGColor)) != kCGColorSpaceModelRGB) {
        return [NSString stringWithFormat:@"#FFFFFF"];
    }
    return [NSString stringWithFormat:@"#%02X%02X%02X", (int)((CGColorGetComponents(color.CGColor))[0]*255.0),
            (int)((CGColorGetComponents(color.CGColor))[1]*255.0),
            (int)((CGColorGetComponents(color.CGColor))[2]*255.0)];
}

@end
