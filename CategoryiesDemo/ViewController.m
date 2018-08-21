//
//  ViewController.m
//  CategoryiesDemo
//
//  Created by share on 2018/8/20.
//  Copyright © 2018年 Gpx. All rights reserved.
//

#import "ViewController.h"
#import "PXCategory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *label = [UILabel px_labelWithFont:[UIFont systemFontOfSize:18] textColor:UIColor.redColor];
    label.text = @"测试label";
    label.center = self.view.center;
    [label sizeToFit];
    [self.view addSubview:label];

    UIButton *btn = [UIButton px_initWithTitle:@"测试按钮"];
    btn.frame = CGRectMake(10, 100, 50, 30);
//    [btn setTitleColor:[UIColor px_randomColor] forState:UIControlStateNormal];
    [btn sizeToFit];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonClicked:(UIButton *)sender {
    
    [sender setTitleColor:[UIColor px_randomColor] forState:UIControlStateNormal];

}


@end
