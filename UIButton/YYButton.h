//
//  YYButton.h
//  UIButton
//
//  Created by 杨世川 on 18/1/21.
//  Copyright © 2018年 杨世川. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, YYLayoutButtonType) {
    //图片上文字下
    YYLayoutButtonTypeImageUp = 0,
    //图片下文字上
    YYLayoutButtonTypeImageDown,
    //图片左文字右
    YYLayoutButtonTypeImageLeft,
    //图片右文字左
    YYLayoutButtonTypeImageRight
};

//动态改变按钮内部文字
typedef NS_ENUM(NSInteger, YYLayoutPositionType) {
    //左侧位置固定不变，向右伸展
    YYLayoutPositionTypeStretchNormal = 0,
    //右侧固定不变，向左伸展
    YYLayoutPositionTypeStretchLeft
};

@interface YYButton : UIButton

//titleLabel字体大小、默认是15.0
@property (nonatomic,assign) CGFloat titleFont;
//titleLabel字体名称、默认字体
@property (nonatomic,strong) NSString *fontName;
//imageView高度、默认是图片宽度
@property (nonatomic,assign) CGFloat imageViewWidth;
//imageView高度、默认是图片高度
@property (nonatomic,assign) CGFloat imageViewHeight;
//imageView边距、默认为(0,0,0,0)
@property (nonatomic,assign) UIEdgeInsets buttonImageEdgeInsets;
//titleLabel边距、默认为(0,0,0,0)
@property (nonatomic,assign) UIEdgeInsets buttonTitleEdgeInsets;

//button类型
@property (nonatomic,assign) YYLayoutButtonType imageType;
//button动态伸展方向
@property (nonatomic,assign) YYLayoutPositionType positionType;
//扩大button响应区域
@property (nonatomic,assign) UIEdgeInsets hitTestEdgeInsets;

@end
