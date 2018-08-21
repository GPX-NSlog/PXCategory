//
//  UIButton+PXAdd.m
//  CategoryiesDemo
//
//  Created by share on 2018/8/21.
//  Copyright © 2018年 Gpx. All rights reserved.
//

#import "UIButton+PXAdd.h"
#import "PXCategory.h"

@implementation UIButton (PXAdd)

- (instancetype)px_buttonWithTitle:(NSString *)title {
    return [self px_initWithImage:nil title:title];
}
+ (instancetype)px_initWithTitle:(NSString *)title {
    return [UIButton px_buttonWithImage:nil title:title];
}

- (instancetype)px_initWithImage:(UIImage *)image title:(NSString *)title {
    return [UIButton px_buttonWithImage:image title:title];
}

+ (instancetype)px_buttonWithImage:(UIImage *)image title:(NSString *)title {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor px_randomColor] forState:UIControlStateNormal];
    return  btn;
}


@end
