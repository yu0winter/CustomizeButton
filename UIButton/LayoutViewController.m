//
//  LayoutViewController.m
//  UIButton
//
//  Created by 杨世川 on 18/1/21.
//  Copyright © 2018年 杨世川. All rights reserved.
//

#import "LayoutViewController.h"
#import "YYLayoutButton.h"

#define ScreenWidth  [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

@interface LayoutViewController ()

@end

@implementation LayoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    [self imageUp];
    [self imageDown];
    [self imageLeft];
    [self imageRight];
}

- (void)imageUp
{
    YYLayoutButton *button = [[YYLayoutButton alloc]initWithFrame:CGRectMake(0, 64, 100, 100)];
    [button setTitle:@"adminadminadmin" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"touxiang"] forState:UIControlStateNormal];

    //这个是需要自己设置的
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    button.imageType = YYLayoutButtonTypeImageUp;
    //此时只有以下三个数字生效，其余不管怎么设置都不生效
    button.buttonImageEdgeInsets = UIEdgeInsetsMake(10, 0, 10, 0);
    button.buttonTitleEdgeInsets = UIEdgeInsetsMake(10, 0, 0, 0);

    button.layer.borderColor = [UIColor redColor].CGColor;
    button.layer.borderWidth = 2.0;
    [self.view addSubview:button];
}

- (void)imageDown
{
    YYLayoutButton *button = [[YYLayoutButton alloc]initWithFrame:CGRectMake(ScreenWidth - 100, 64, 100, 100)];
    [button setTitle:@"adminadminadmin" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"touxiang"] forState:UIControlStateNormal];

    //这个是需要自己设置的
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    button.imageType = YYLayoutButtonTypeImageDown;
    //此时只有以下三个数字生效，其余不管怎么设置都不生效
    button.buttonTitleEdgeInsets = UIEdgeInsetsMake(10, 0, 10, 0);
    button.buttonImageEdgeInsets = UIEdgeInsetsMake(10, 0, 0, 0);

    button.layer.borderColor = [UIColor redColor].CGColor;
    button.layer.borderWidth = 2.0;
    [self.view addSubview:button];
}

- (void)imageLeft
{
    YYLayoutButton *button = [[YYLayoutButton alloc]initWithFrame:CGRectMake(0, ScreenHeight - 50, 120, 50)];
    [button setTitle:@"admin" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"touxiang"] forState:UIControlStateNormal];

    //这个是需要自己设置的
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    button.imageType = YYLayoutButtonTypeImageLeft;
    //此时只有以下三个数字生效，其余不管怎么设置都不生效
    button.buttonTitleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    button.buttonImageEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 10);

    button.layer.borderColor = [UIColor redColor].CGColor;
    button.layer.borderWidth = 2.0;
    [self.view addSubview:button];
}

- (void)imageRight
{
    YYLayoutButton *button = [[YYLayoutButton alloc]initWithFrame:CGRectMake(ScreenWidth - 120, ScreenHeight - 50, 120, 50)];
    [button setTitle:@"admin" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"touxiang"] forState:UIControlStateNormal];

    //这个是需要自己设置的
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    button.imageType = YYLayoutButtonTypeImageRight;
    //此时只有以下三个数字生效，其余不管怎么设置都不生效
    button.buttonTitleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 10);
    button.buttonImageEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);

    button.layer.borderColor = [UIColor redColor].CGColor;
    button.layer.borderWidth = 2.0;
    [self.view addSubview:button];

}


@end




