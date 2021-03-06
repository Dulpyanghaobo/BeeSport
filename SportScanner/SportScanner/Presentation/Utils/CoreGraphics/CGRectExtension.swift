//
//  CGRectExtension.swift
//  HealthFoodScanner
//
//  Created by 杨皓博 on 2021/9/9.
//  Copyright © 2021 IntSig Information Co., Ltd. All rights reserved.
//


import UIKit

extension CGRect {
    /// EZSE: Easier initialization of CGRect
    public init(x: CGFloat, y: CGFloat, w: CGFloat, h: CGFloat) {
        self.init(x: x, y: y, width: w, height: h)
    }

    /// EZSE: X value of CGRect's origin
    public var x: CGFloat {
        get {
            return self.origin.x
        } set(value) {
            self.origin.x = value
        }
    }
    
    /// EZSE: Y value of CGRect's origin
    public var y: CGFloat {
        get {
            return self.origin.y
        } set(value) {
            self.origin.y = value
        }
    }

    /// EZSE: Width of CGRect's size
    public var w: CGFloat {
        get {
            return self.size.width
        } set(value) {
            self.size.width = value
        }
    }

    /// EZSE: Height of CGRect's size
    public var h: CGFloat {
        get {
            return self.size.height
        } set(value) {
            self.size.height = value
        }
    }
    
    /// EZSE : Surface Area represented by a CGRectangle
    public var area: CGFloat {
        return self.h * self.w
    }
}
