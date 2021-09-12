//
//  HFSColor.m
//  HealthFoodScanner
//
//  Created by 张雅琼 on 2020/8/27.
//  Copyright © 2020 IntSig Information Co., Ltd. All rights reserved.
//

#import "HFSColor.h"

@implementation HFSColor

#pragma mark - 特殊的颜色

/// 品牌绿 28A751  用于界面出现的品牌绿
+ (UIColor *) brandGreenColor
{
    return UIColorFromRGB(0x28A751);
}

/// 渐变绿色 4CC263  用于到品牌绿的渐变色
+ (UIColor *) gradualGreenColor
{
    return UIColorFromRGB(0x4CC263);
}

/// 浅绿色 99DEA7  用于背景颜色设置
+ (UIColor *) lightGreenColor
{
    return UIColorFromRGB(0x99DEA7);
}

/// 浅绿色2 E9F6ED
+ (UIColor *) lightGreen2Color
{
    return UIColorFromRGB(0xE9F6ED);
}

/// 浅绿色3 12B880
+ (UIColor *) lightGreen3Color
{
    return UIColorFromRGB(0x12B880);
}

/// 浅绿色4 ADDDC8
+ (UIColor *) lightGreen4Color
{
    return UIColorFromRGB(0xADDDC8);
}

/// 浅绿色5 F4FAF6
+ (UIColor *) lightGreen5Color
{
    return UIColorFromRGB(0xF4FAF6);
}

/// 红色   FF4848
+ (UIColor *) redColor
{
    return UIColorFromRGB(0xFF4848);
}

/// 渐变红色 EF6262
+ (UIColor *) gradualRedColor
{
    return UIColorFromRGB(0xEF6262);
}

/// 浅红色  FF8484
+ (UIColor *) lightRedColor
{
    return UIColorFromRGB(0xFF8484);
}

/// 紫色 3D367A
+ (UIColor *) purpleColor
{
    return UIColorFromRGB(0x3D367A);
}

/// 橙色 FF9623
+ (UIColor *) orangeColor
{
    return UIColorFromRGB(0xFF9623);
}

/// 浅橙色 FFEFDE
+ (UIColor *) lightOrangeColor
{
    return UIColorFromRGB(0xFFEFDE);
}

/// 蓝色 324AFC
+ (UIColor *) blueColor
{
    return UIColorFromRGB(0x324AFC);
}

/// 浅蓝色 EAEDFD
+ (UIColor *) lightBlueColor
{
    return UIColorFromRGB(0xEAEDFD);
}


#pragma mark - 黑/白/灰的颜色

/// 黑色   000000
+ (UIColor *) blackColor
{
    return UIColorFromRGB(0x000000);
}

/// 黑色   1B1B1B  用于主标题文字颜色等
+ (UIColor *) black1Color
{
    return UIColorFromRGB(0x1B1B1B);
}

/// 黑色   0F361C
+ (UIColor *) black2Color
{
    return UIColorFromRGB(0x0F361C);
}

/// 白色   FFFFFF  用于主文字颜色等
+ (UIColor *) whiteColor
{
    return UIColorFromRGB(0xFFFFFF);
}
/// 淡灰色 E5E5E5 用于界面的背景色等
+ (UIColor *) gray1Color
{
    return UIColorFromRGB(0xE5E5E5);
}

/// 淡灰色 DDDDDD 用于界面的背景色2等
+ (UIColor *) gray2Color
{
    return UIColorFromRGB(0xDDDDDD);
}

/// 灰色 EAEAEA 用于对话框的背景色2等
+ (UIColor *) gray3Color
{
    return UIColorFromRGB(0xEAEAEA);
}
/// 透明色  FFFFFF
+ (UIColor *) clearColor
{
    return [UIColor clearColor];
}

/// 深灰色1 666666  用于副标题、普通气泡文字颜色，深色小字颜色
+ (UIColor *) darkGray1Color
{
    return UIColorFromRGB(0x666666);
}

/// 浅灰色1 999999
+ (UIColor *) lightGray1Color
{
    return UIColorFromRGB(0x999999);
}

/// 浅灰色2 C9C9C9
+ (UIColor *) lightGray2Color
{
    return UIColorFromRGB(0xC9C9C9);
}

/// 浅灰色3 D9D9D9
+ (UIColor *) lightGray3Color
{
    return UIColorFromRGB(0xD9D9D9);
}

/// 浅灰色4 CECECE
+ (UIColor *) lightGray4Color
{
    return UIColorFromRGB(0xCECECE);
}

/// 浅灰色5 F1F1F1    分割线
+ (UIColor *) lightGray5Color
{
    return UIColorFromRGB(0xF1F1F1);
}

/// 浅灰色6 F8F8FA    背景色
+ (UIColor *) lightGray6Color
{
    return UIColorFromRGB(0xF8F8FA);
}

/// 浅灰色7 E4E4E4    背景色
+ (UIColor *) lightGray7Color
{
    return UIColorFromRGB(0xE4E4E4);
}

/// 橘色
+ (UIColor *) Orange1Color
{
    return UIColorFromRGB(0xFFA654);
}

/// 文字边框灰色
+ (UIColor *) borderGrayColor
{
    return UIColorFromRGB(0xE7E7E7);
}
//
+ (UIColor *)orange2Color
{
    return UIColorFromRGB(0xFFEDDC);
}

+ (UIColor *)orange3Color
{
    return UIColorFromRGB(0xFF881B);
}

+ (UIColor *)orange4Color
{
    return UIColorFromRGB(0xFFF8F1);
}

+ (UIColor *)grayBackColor
{
    return UIColorFromRGB(0xF7F7F7);
}

+ (UIColor *)populeColor
{
    return UIColorFromRGB(0x9B6FFF);
}

+ (UIColor *)populeTypeColor
{
    return UIColorFromRGB(0x8353F0);
}

+ (UIColor *)skyBlueColor
{
    return UIColorFromRGB(0x52C4FC);
}

@end
