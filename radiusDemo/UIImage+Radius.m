//
//  UIImage+Radius.m
//  radiusDemo
//
//  Created by iosyf-02 on 2018/4/12.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "UIImage+Radius.h"

@implementation UIImage (Radius)

/**
 为UIimage绘制圆角
 
 @param radius 圆角半径
 @param rect rect
 @return 圆角图片
 */
- (UIImage *)addCorner:(CGFloat)radius rect:(CGRect)rect {
    
    //开启上下文
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [UIScreen mainScreen].scale);
    //设置路劲
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:radius];
    [path addClip];
    //绘制
    [self drawInRect:rect];
    //获取图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //关闭上下文对象
    UIGraphicsEndImageContext();
    return image;
}


@end
