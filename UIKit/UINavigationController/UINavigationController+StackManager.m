//
//  UINavigationController+StackManager.m
//  NULL
//
//  Created by NULL on Future.
//  Copyright © 2015年 NULL. All rights reserved.
//

#import "UINavigationController+StackManager.h"

@implementation UINavigationController (StackManager)

- (id)findViewController:(NSString *)Class
{
    for (UIViewController *viewController in self.viewControllers) {
        if ([viewController isKindOfClass:NSClassFromString(Class)]) {
            return viewController;
        }
    }
    return nil;
}

- (BOOL)isOnlyContainRootViewController
{
    if (self.viewControllers &&
        self.viewControllers.count == 1) {
        return YES;
    }
    return NO;
}

- (UIViewController *)rootViewController
{
    if (self.viewControllers && self.viewControllers.count > 0) {
        return [self.viewControllers firstObject];
    }
    return nil;
}

- (NSArray *)popToViewControllerWithClass:(NSString*)Class animated:(BOOL)animated
{
    return [self popToViewController:[self findViewController:Class] animated:YES];
}

- (NSArray *)popToViewControllerWithLevel:(NSInteger)Level animated:(BOOL)animated
{
    NSInteger count = self.viewControllers.count;
    if (count > Level) {
        NSInteger index = count - Level - 1;
        UIViewController *viewController = self.viewControllers[index];
        return [self popToViewController:viewController animated:animated];
    }
    else {
        return [self popToRootViewControllerAnimated:animated];
    }
}

@end
