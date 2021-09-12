//
//  HFSFont.h
//  HealthFoodScanner
//
//  Created by 张雅琼 on 2020/8/27.
//  Copyright © 2020 IntSig Information Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HFSFont : UIFont

/// 超细字体 -0.8
/// @param fontSize 字体大小
+ (UIFont *) ultraLightTextFontWithSize:(CGFloat) fontSize;

/// 纤细字体 -0.6
/// @param fontSize 字体大小
+ (UIFont *) thinTextFontWithSize:(CGFloat) fontSize;

/// 亮字体 -0.4
/// @param fontSize 字体大小
+ (UIFont *) lightTextFontWithSize:(CGFloat) fontSize;

/// 常规字体 0
/// @param fontSize 字体大小
+ (UIFont *) regularFontWithSize:(CGFloat) fontSize;

/// 介于Regular和Semibold之间 0.23 ，对应UI视觉图的PingFangSC-Medium
/// @param fontSize 字体大小
+ (UIFont *) mediumFontWithSize:(CGFloat) fontSize;

/// 半粗字体 0.3
/// @param fontSize 字体大小
+ (UIFont *) semiboldFontWithSize:(CGFloat) fontSize;

///  加粗字体 0.4
/// @param fontSize 字体大小
+ (UIFont *) boldFontWithSize:(CGFloat) fontSize;

/// 介于Bold和Black之间 0.56
/// @param fontSize 字体大小
+ (UIFont *) heavyTextFontWithSize:(CGFloat) fontSize;

/// 最粗字体(理解) 0.62
/// @param fontSize 字体大小
+ (UIFont *) blackFontWithSize:(CGFloat) fontSize;

@end

NS_ASSUME_NONNULL_END
