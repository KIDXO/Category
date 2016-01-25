//
//  UIWebView+JS.h
//  iOS-Categories (https://github.com/shaojiankui/iOS-Categories)
//
//  Created by Jakey on 14/12/22.
//  Copyright (c) 2014年 duzixi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIWebView (JS)

#pragma mark -
#pragma mark 获取网页中的数据
/// 获取某个标签的结点个数
- (int)nodeCountOfTag:(NSString *)tag;
/// 获取当前页面URL
- (NSString *) getCurrentURL;
/// 获取标题
- (NSString *) getTitle;
/// 获取图片
- (NSArray *) getImgs;
/// 获取当前页面所有链接
- (NSArray *) getOnClicks;
@end
