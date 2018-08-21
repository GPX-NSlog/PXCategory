//
//  UIColor+Add.h
//  PXCategory
//
//  Created by share on 2018/8/20.
//  Copyright © 2018年 Gpx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (PXAdd)

+ (UIColor *)px_randomColor;
+ (UIColor * _Nullable)px_colorWithHexString:(NSString * _Nonnull)string;
+ (UIColor * _Nullable)px_colorWithHexString:(NSString * _Nonnull)string withAlpha:(CGFloat)alpha;

@end
