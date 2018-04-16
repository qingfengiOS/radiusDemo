//
//  UIImage+Radius.h
//  radiusDemo
//
//  Created by iosyf-02 on 2018/4/12.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Radius)

/**
 为UIimage绘制圆角

 @param radius 圆角半径
 @param rect rect
 @return 圆角图片
 */
- (UIImage *)addCorner:(CGFloat)radius rect:(CGRect)rect;

@end
