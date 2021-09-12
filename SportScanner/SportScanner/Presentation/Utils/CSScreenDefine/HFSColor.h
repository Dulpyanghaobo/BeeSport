//
//  HFSColor.h
//  HealthFoodScanner
//
//  Created by 张雅琼 on 2020/8/27.
//  Copyright © 2020 IntSig Information Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

#ifndef UIColorFromRGB//(rgbValue)
#define UIColorFromRGB(rgbValue) \
[UIColor \
  colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
         green:((float)((rgbValue & 0x00FF00) >> 8))/255.0 \
          blue:((float)(rgbValue & 0x0000FF))/255.0 \
         alpha:1.0]
#endif
NS_ASSUME_NONNULL_BEGIN

@interface HFSColor : UIColor

#pragma mark - 特殊的颜色

/// 品牌绿 28A751  用于界面出现的品牌绿
+ (UIColor *) brandGreenColor;

/// 渐变绿色 4CC263  用于到品牌绿的渐变色
+ (UIColor *) gradualGreenColor;

/// 浅绿色 99DEA7  用于背景颜色设置
+ (UIColor *) lightGreenColor;

/// 浅绿色2 E9F6ED
+ (UIColor *) lightGreen2Color;

/// 浅绿色3 12B880
+ (UIColor *) lightGreen3Color;

/// 浅绿色4 ADDDC8
+ (UIColor *) lightGreen4Color;

/// 浅绿色5 F4FAF6
+ (UIColor *) lightGreen5Color;

/// 红色   FF4848
+ (UIColor *) redColor;

/// 渐变红色 EF6262
+ (UIColor *) gradualRedColor;

/// 浅红色  FF8484
+ (UIColor *) lightRedColor;

/// 紫色 3D367A
+ (UIColor *) purpleColor;

/// 橙色 FF9623
+ (UIColor *) orangeColor;

/// 浅橙色 FFEFDE
+ (UIColor *) lightOrangeColor;

/// 蓝色 324AFC
+ (UIColor *) blueColor;

/// 浅蓝色 EAEDFD
+ (UIColor *) lightBlueColor;


#pragma mark - 黑/白/灰的颜色

/// 黑色   000000
+ (UIColor *) blackColor;

/// 黑色   1B1B1B  用于主标题文字颜色等
+ (UIColor *) black1Color;

/// 黑色   0F361C
+ (UIColor *) black2Color;

/// 白色   FFFFFF  用于主文字颜色等
+ (UIColor *) whiteColor;

/// 淡灰色 E5E5E5 用于界面的背景色等
+ (UIColor *) gray1Color;

/// 淡灰色 DDDDDD 用于界面的背景色2等
+ (UIColor *) gray2Color;

/// 灰色 EAEAEA 用于对话框的背景色2等
+ (UIColor *) gray3Color;

/// 透明色  FFFFFF
+ (UIColor *) clearColor;

/// 深灰色1 666666  用于副标题、普通气泡文字颜色，深色小字颜色
+ (UIColor *) darkGray1Color;

/// 浅灰色1 999999
+ (UIColor *) lightGray1Color;

/// 浅灰色2 C9C9C9
+ (UIColor *) lightGray2Color;

/// 浅灰色3 D9D9D9
+ (UIColor *) lightGray3Color;

/// 浅灰色4 CECECE
+ (UIColor *) lightGray4Color;

/// 浅灰色5 F1F1F1    分割线
+ (UIColor *) lightGray5Color;

/// 浅灰色6 F8F8FA    背景色
+ (UIColor *) lightGray6Color;

/// 浅灰色7 E4E4E4    背景色
+ (UIColor *) lightGray7Color;

/// 橘色
+ (UIColor *) Orange1Color;

/// 文字边框灰色
+ (UIColor *) borderGrayColor;

+ (UIColor *) orange2Color;

+ (UIColor *) orange3Color;

+ (UIColor *) orange4Color;
/// 紫色
+ (UIColor *)populeColor;

// 天空蓝
+ (UIColor *)skyBlueColor;

/// 紫色type1
+ (UIColor *)populeTypeColor;

+ (UIColor *) grayBackColor;
@end

NS_ASSUME_NONNULL_END
