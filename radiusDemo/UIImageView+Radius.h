//
//  UIImageView+Radius.h
//  radiusDemo
//
//  Created by iosyf-02 on 2018/4/12.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (Radius)

/**
 为UIimageView绘制圆角
 
 @param radius 圆角半径
 */
- (void)addCorner:(CGFloat)radius;

@end
