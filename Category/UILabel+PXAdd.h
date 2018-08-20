//
//  UILabel+PXAdd.h
//  PXCategory
//
//  Created by share on 2018/8/20.
//  Copyright © 2018年 Gpx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (PXAdd)
- (instancetype)initWithFont:(UIFont *)font textColor:(UIColor *)textColor;

+ (instancetype)px_labelWithFont:(UIFont *)font textColor:(UIColor *)textColor;
+ (instancetype)px_labelWithSystemFontSize:(CGFloat)fontSize textColorHexString:(NSString *)hexString;

@end
