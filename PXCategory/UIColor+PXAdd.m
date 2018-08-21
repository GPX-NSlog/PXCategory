//
//  UIColor+Add.m
//  PXCategory
//
//  Created by share on 2018/8/20.
//  Copyright © 2018年 Gpx. All rights reserved.
//

#import "UIColor+PXAdd.h"

@implementation UIColor (PXAdd)

+ (UIColor *)px_randomColor {
    return [UIColor colorWithRed:(arc4random()%256)/256.f
                           green:(arc4random()%256)/256.f
                            blue:(arc4random()%256)/256.f
                           alpha:1.0f];
}

+ (UIColor * _Nullable)px_colorWithHexString:(NSString * _Nonnull)string {
    return [self px_colorWithHexString:string withAlpha:1.0];
}

+ (UIColor * _Nullable)px_colorWithHexString:(NSString * _Nonnull)string withAlpha:(CGFloat)alpha {
    
    if (string.length == 0) {
        return nil;
    }
    
    if('#' != [string characterAtIndex:0]) {
        string = [NSString stringWithFormat:@"#%@", string];
    }
    
    if (string.length != 7 && string.length != 4) {
        
#ifdef DEBUG
        NSLog(@"Unsupported string format: %@", string);
#endif
        return nil;
    }
    
    if(string.length == 4) {
        string = [NSString stringWithFormat:@"#%@%@%@%@%@%@",
                  [string substringWithRange:NSMakeRange(1, 1)],[string substringWithRange:NSMakeRange(1, 1)],
                  [string substringWithRange:NSMakeRange(2, 1)],[string substringWithRange:NSMakeRange(2, 1)],
                  [string substringWithRange:NSMakeRange(3, 1)],[string substringWithRange:NSMakeRange(3, 1)]];
    }
    
    NSString *redHex = [NSString stringWithFormat:@"0x%@", [string substringWithRange:NSMakeRange(1, 2)]];
    unsigned red = [[self class] hexValueToUnsigned:redHex];
    
    NSString *greenHex = [NSString stringWithFormat:@"0x%@", [string substringWithRange:NSMakeRange(3, 2)]];
    unsigned green = [[self class] hexValueToUnsigned:greenHex];
    
    NSString *blueHex = [NSString stringWithFormat:@"0x%@", [string substringWithRange:NSMakeRange(5, 2)]];
    unsigned blue = [[self class] hexValueToUnsigned:blueHex];
    
    return [UIColor colorWithRed:(float)red/255 green:(float)green/255 blue:(float)blue/255 alpha:alpha];
}

+ (unsigned)hexValueToUnsigned:(NSString *)hexValue {
    
    unsigned value = 0;
    
    NSScanner *hexValueScanner = [NSScanner scannerWithString:hexValue];
    [hexValueScanner scanHexInt:&value];
    
    return value;
}

@end
