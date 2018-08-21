//
//  UIButton+PXAdd.h
//  CategoryiesDemo
//
//  Created by share on 2018/8/21.
//  Copyright © 2018年 Gpx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (PXAdd)

- (instancetype)px_buttonWithTitle:(NSString *)title;
+ (instancetype)px_initWithTitle:(NSString *)title;

- (instancetype)px_initWithImage:(UIImage *)image title:(NSString *)title;
+ (instancetype)px_buttonWithImage:(UIImage *)image title:(NSString *)title;


@end
