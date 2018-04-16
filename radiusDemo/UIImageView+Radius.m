//
//  UIImageView+Radius.m
//  radiusDemo
//
//  Created by iosyf-02 on 2018/4/12.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "UIImageView+Radius.h"

@implementation UIImageView (Radius)

/**
 为UIimageView绘制圆角

 @param radius 圆角半径
 */
- (void)addCorner:(CGFloat)radius {

    //设置路劲
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:radius];
    
    //开始绘制
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, [UIScreen mainScreen].scale);
    CGContextAddPath(UIGraphicsGetCurrentContext(), path.CGPath);
    CGContextClip(UIGraphicsGetCurrentContext());
    [self.image drawInRect:self.bounds];
    
    //得到结果
    UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    self.image = resultImage;
    
    //关闭上下文对象
    UIGraphicsEndImageContext();
}

@end
