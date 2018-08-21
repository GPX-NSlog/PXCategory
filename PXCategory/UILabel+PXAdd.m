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

- (instancetype)initWithFont:(UIFont *)font textColor:(UIColor *)textColor {
    if (self = [super init]) {
        self.font = font;
        self.textColor = textColor;
    }
    return self;
}

+ (instancetype)px_labelWithFont:(UIFont *)font textColor:(UIColor *)textColor {
    return [[UILabel alloc] initWithFont:font textColor:textColor];
}

+ (instancetype)px_labelWithSystemFontSize:(CGFloat)fontSize textColorHexString:(NSString *)hexString {
    UILabel *label = [self new];
    label.font = [UIFont systemFontOfSize:fontSize];
//    label.textColor = [UIColor px_colorWithHexString:hexString];
    return label;
}

@end
