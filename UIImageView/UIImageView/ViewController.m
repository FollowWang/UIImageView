//
//  ViewController.m
//  UIImageView
//
//  Created by wangjie on 15/6/27.
//  Copyright (c) 2015年 wangjie. All rights reserved.
//

#import "ViewController.h"
#import "MyClass1.h"
#import "MyClass2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MyClass2 *objectB = [[MyClass2 alloc] init];
    MyClass1 *objectA = [[MyClass1 alloc] init];
    
    objectA.value = @"aaa";
    [objectA addObserver:objectB forKeyPath:@"theData" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:NULL];
    objectA.value = @"Hello world";
    [objectA.theData removeObjectAtIndex:0];
    [objectA removeObserver:objectB forKeyPath:@"theData"];
    
    
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
