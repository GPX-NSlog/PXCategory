//
//  UILabel+PXAdd.m
//  CategoryiesDemo
//
//  Created by share on 2018/8/20.
//  Copyright © 2018年 Gpx. All rights reserved.
//

#import "UILabel+PXAdd.h"
#import "PXCategory.h"

@implementation UILabel (PXAdd)

- (instancetype)px_initWithFont:(UIFont *)font textColor:(UIColor *)textColor {
    return [UILabel px_labelWithFont:font textColor:textColor];
}

+ (instancetype)px_labelWithFont:(UIFont *)font textColor:(UIColor *)textColor {
    UILabel *label = [self new];
    label.font = font;
    label.textColor = textColor;
    return label;
    
}

+ (instancetype)px_labelWithSystemFontSize:(CGFloat)fontSize textColorHexString:(NSString *)hexString {
   
    return [UILabel px_labelWithFont:[UIFont systemFontOfSize:fontSize] textColor:[UIColor px_colorWithHexString:hexString]];
}

@end
