//
//  LayoutViewController.m
//  UIButton
//
//  Created by 杨世川 on 18/1/21.
//  Copyright © 2018年 杨世川. All rights reserved.
//

#import "LayoutViewController.h"
#import "YYLayoutButton.h"

@interface LayoutViewController ()

@end

@implementation LayoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    YYLayoutButton *button = [[YYLayoutButton alloc]initWithFrame:CGRectMake(100, 100, 100, 50)];
    [button setTitle:@"adminadminadmin" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"touxiang"] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];

    button.imageType = YYLayoutButtonTypeImageUp;
    button.buttonImageEdgeInsets = UIEdgeInsetsMake(10, 10, 10, 10);
    button.buttonTitleEdgeInsets = UIEdgeInsetsMake(10, 0, 10, 0);


    button.layer.borderColor = [UIColor redColor].CGColor;
    button.layer.borderWidth = 2.0;
    [self.view addSubview:button];

}

@end




