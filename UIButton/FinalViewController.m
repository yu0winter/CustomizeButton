//
//  FinalViewController.m
//  UIButton
//
//  Created by 杨世川 on 18/1/21.
//  Copyright © 2018年 杨世川. All rights reserved.
//

#import "FinalViewController.h"
#import "YYButton.h"

@interface FinalViewController ()

@end

@implementation FinalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    YYButton *buttonTwo = [[YYButton alloc]initWithFrame:CGRectMake(200, 200, 120, 50)];
    [buttonTwo setTitle:@"admin" forState:UIControlStateNormal];
    [buttonTwo setImage:[UIImage imageNamed:@"touxiang"] forState:UIControlStateNormal];
    [buttonTwo addTarget:self action:@selector(clickButtonTwo:) forControlEvents:UIControlEventTouchUpInside];

    //这个是需要自己设置的
    [buttonTwo setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    buttonTwo.imageType = YYLayoutButtonTypeImageRight;
    buttonTwo.positionType = YYLayoutPositionTypeLeftUnchanged;
    //这些参数会影响按钮宽高
    buttonTwo.buttonTitleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 10);
    buttonTwo.buttonImageEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);

    //扩大响应区域
    buttonTwo.hitTestEdgeInsets = UIEdgeInsetsMake(-50, -50, -50, -50);

    buttonTwo.layer.borderColor = [UIColor redColor].CGColor;
    buttonTwo.layer.borderWidth = 2.0;
    [self.view addSubview:buttonTwo];
}

- (void)clickButtonTwo:(UIButton *)sender
{
    NSString *text = sender.titleLabel.text;
    if (text.length <= 20)
    {
        text = [text stringByAppendingString:@"B"];
    }
    [sender setTitle:text forState:UIControlStateNormal];
}

@end


