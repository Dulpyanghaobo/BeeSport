//
//  UILabelExtension.swift
//  HealthFoodScanner
//
//  Created by 杨皓博 on 2021/9/9.
//  Copyright © 2021 IntSig Information Co., Ltd. All rights reserved.
//

import UIKit

public extension UILabel {
    /// SwifterSwift: Initialize a UILabel with text.
    convenience init(text: String?) {
        self.init()
        self.text = text
    }


    /// - Parameters:
    ///   - text: 文字
    ///   - fonts: 字体
    convenience init(text: String, fonts: UIFont) {
        self.init()
        font = fonts
        self.text = text
    }

    /// - Parameters:
    ///   - text: 文字
    ///   - fonts: 字体
    convenience init(text: String, fonts: UIFont, textColor: UIColor) {
        self.init()
        font = fonts
        self.text = text
        self.textColor = textColor
    }
    
    /// SwifterSwift: Required height for a label.
    var requiredHeight: CGFloat {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: frame.width, height: CGFloat.greatestFiniteMagnitude))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = font
        label.text = text
        label.attributedText = attributedText
        label.sizeToFit()
        return label.frame.height
    }
}
