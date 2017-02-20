//
//  UIWindow+Hierarchy.m
//  NULL
//
//  Created by NULL on Future.
//  Copyright © 2015年 NULL. All rights reserved.
//

#import "UIWindow+Hierarchy.h"

@implementation UIWindow (Hierarchy)

- (UIViewController *)topViewController
{
    UIViewController *topController = [self rootViewController];
    
    while ([topController presentedViewController])
        topController = [topController presentedViewController];
    
    return topController;
}

- (UIViewController *)currentViewController;
{
    UIViewController *currentViewController = [self topViewController];
    
    while ([currentViewController isKindOfClass:[UINavigationController class]] &&
           [(UINavigationController *)currentViewController topViewController])
        currentViewController = [(UINavigationController *)currentViewController topViewController];
    
    return currentViewController;
}

@end
