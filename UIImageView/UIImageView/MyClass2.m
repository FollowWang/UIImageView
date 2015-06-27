//
//  MyClass2.m
//  UIImageView
//
//  Created by wangjie on 15/6/27.
//  Copyright (c) 2015年 wangjie. All rights reserved.
//

#import "MyClass2.h"

@implementation MyClass2

-(void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    NSLog(@"I heard about the change!");
    //id newValue = [object valueForKeyPath:keyPath];
    //NSLog(@"The key path %@ changed to %@",keyPath,newValue);
    id oldValue = [change objectForKey:NSKeyValueChangeOldKey];
    id newValue = [change objectForKey:NSKeyValueChangeNewKey];
    NSLog(@"%@,%@",oldValue,newValue);
}
@end
