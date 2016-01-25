//
//  UIWebView+JS.m
//  iOS-Categories (https://github.com/shaojiankui/iOS-Categories)
//
//  Created by Jakey on 14/12/22.
//  Copyright (c) 2014年 duzixi. All rights reserved.
//

#import "UIWebView+JS.h"

@implementation UIWebView (HTML5)
#pragma mark -
#pragma mark 获取网页中的数据
/// 获取某个标签的结点个数
- (int)nodeCountOfTag:(NSString *)tag
{
    NSString *jsString = [NSString stringWithFormat:@"document.getElementsByTagName('%@').length", tag];
    int len = [[self stringByEvaluatingJavaScriptFromString:jsString] intValue];
    return len;
}
/// 获取当前页面URL
- (NSString *)getCurrentURL
{
    return [self stringByEvaluatingJavaScriptFromString:@"document.location.href"];
}
/// 获取标题
- (NSString *)getTitle
{
    return [self stringByEvaluatingJavaScriptFromString:@"document.title"];
}
/// 获取所有图片链接
- (NSArray *)getImgs
{
    NSMutableArray *arrImgURL = [[NSMutableArray alloc] init];
    for (int i = 0; i < [self nodeCountOfTag:@"img"]; i++) {
        NSString *jsString = [NSString stringWithFormat:@"document.getElementsByTagName('img')[%d].src", i];
        [arrImgURL addObject:[self stringByEvaluatingJavaScriptFromString:jsString]];
    }
    return arrImgURL;
}
/// 获取当前页面所有点击链接
- (NSArray *)getOnClicks
{
    NSMutableArray *arrOnClicks = [[NSMutableArray alloc] init];
    for (int i = 0; i < [self nodeCountOfTag:@"a"]; i++) {
        NSString *jsString = [NSString stringWithFormat:@"document.getElementsByTagName('a')[%d].getAttribute('onclick')", i];
        NSString *clickString = [self stringByEvaluatingJavaScriptFromString:jsString];
        NSLog(@"%@", clickString);
        [arrOnClicks addObject:clickString];
    }
    return arrOnClicks;
}
@end
