//
//  MyClass1.h
//  UIImageView
//
//  Created by wangjie on 15/6/27.
//  Copyright (c) 2015年 wangjie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyClass1 : NSObject
@property(nonatomic,copy) NSString *value;
@property(nonatomic,strong,getter=theDataGetter) NSMutableArray *theData;
@end
