//
//  UINavigationItem+Lock.m
//  NULL
//
//  Created by NULL on Future.
//  Copyright © 2015年 NULL. All rights reserved.
//

#import "UINavigationItem+Lock.h"

@implementation UINavigationItem (Lock)

- (void)lockLeftItem:(BOOL)lock
{
    NSArray *items = self.leftBarButtonItems;
    if (items && items.count > 0) {
        [items enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            if ([obj isKindOfClass:[UIBarButtonItem class]] ||
                [obj isMemberOfClass:[UIBarButtonItem class]])
            {
                UIBarButtonItem *barButtonItem = (UIBarButtonItem *)obj;
                barButtonItem.enabled = !lock;
            }
        }];
    }
}

- (void)lockRightItem:(BOOL)lock
{
    NSArray *items = self.rightBarButtonItems;
    if (items && items.count > 0) {
        [items enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            if ([obj isKindOfClass:[UIBarButtonItem class]] ||
                [obj isMemberOfClass:[UIBarButtonItem class]])
            {
                UIBarButtonItem *barButtonItem = (UIBarButtonItem *)obj;
                barButtonItem.enabled = !lock;
            }
        }];
    }
}

@end
