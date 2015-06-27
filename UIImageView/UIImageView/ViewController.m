//
//  ViewController.m
//  UIImageView
//
//  Created by wangjie on 15/6/27.
//  Copyright (c) 2015年 wangjie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *mars = [UIImage imageNamed:@"1.png"];
    NSLog(@"image:%@",mars);
    CGFloat capw = mars.size.width/2.0 -1;
    CGFloat caph = mars.size.height/2.0 -1;
    UIImage *marsTiled = [mars resizableImageWithCapInsets:UIEdgeInsetsMake(caph, capw, caph, capw)];
    
    UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(20, 5, mars.size.width*2, mars.size.height*1.5)];
    iv.image = marsTiled;
    //UIImageView *iv = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1.png"]];
    [self.view addSubview:iv];
    iv.center = self.view.center;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
