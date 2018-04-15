//
//  AutoLayoutViewController.m
//  UIButton
//
//  Created by NiuYulong on 2018/4/15.
//  Copyright © 2018年 杨世川. All rights reserved.
//

#import "AutoLayoutViewController.h"
#import "YYLayoutButton.h"
#import "Masonry.h"

@interface AutoLayoutViewController ()

@end

@implementation AutoLayoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
//    YYLayoutButton *buttonOne = [[YYLayoutButton alloc]init];
//    [buttonOne setTitle:@"admin" forState:UIControlStateNormal];
//    [buttonOne setImage:[UIImage imageNamed:@"touxiang"] forState:UIControlStateNormal];
//    [buttonOne addTarget:self action:@selector(clickButtonOne:) forControlEvents:UIControlEventTouchUpInside];
//    
//    //这个是需要自己设置的
//    [buttonOne setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
//    buttonOne.imageType = YYLayoutButtonTypeImageRight;
//    //这些参数会影响按钮宽高
//    buttonOne.buttonTitleEdgeInsets = UIEdgeInsetsMake(30, 10, 30, 10);
//    buttonOne.buttonImageEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
//    
//    buttonOne.layer.borderColor = [UIColor redColor].CGColor;
//    buttonOne.layer.borderWidth = 2.0;
//    [self.view addSubview:buttonOne];
//    [buttonOne mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.top.equalTo(self.view).mas_offset(UIEdgeInsetsMake(100, 10, 0, 0));
//    }];

    
    YYLayoutButton *buttonTwo = [[YYLayoutButton alloc]init];
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
    
    buttonTwo.layer.borderColor = [UIColor redColor].CGColor;
    buttonTwo.layer.borderWidth = 2.0;
    [self.view addSubview:buttonTwo];
    [buttonTwo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).mas_offset(300);
        make.right.equalTo(self.view.mas_right).mas_offset(-30);
    }];
}


- (void)clickButtonOne:(UIButton *)sender
{
    NSString *text = sender.titleLabel.text;
    if (text.length <= 20)
    {
        text = [text stringByAppendingString:@"A"];
    }
    [sender setTitle:text forState:UIControlStateNormal];
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
