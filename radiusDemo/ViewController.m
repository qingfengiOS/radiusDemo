//
//  ViewController.m
//  radiusDemo
//
//  Created by iosyf-02 on 2018/4/12.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+Radius.h"
#import "UIImage+Radius.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *tf;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (weak, nonatomic) IBOutlet UITextView *tv;
@property (weak, nonatomic) IBOutlet UIView *v;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.tf.layer.cornerRadius = 10.0f;
    self.tv.layer.cornerRadius = 10.0f;
    self.v.layer.cornerRadius = 10.0f;
    
    self.label.layer.cornerRadius = 10.0f;
    self.label.layer.backgroundColor = [UIColor orangeColor].CGColor;
    
    self.image.backgroundColor = [UIColor whiteColor];
    [self.image addCorner:10.0f];
    
    self.btn.backgroundColor = [UIColor whiteColor];
    UIImage *image = [UIImage imageNamed:@"my_background"];
    [self.btn setBackgroundImage:[image addCorner:10.f rect:self.btn.bounds] forState:UIControlStateNormal];
}




@end
