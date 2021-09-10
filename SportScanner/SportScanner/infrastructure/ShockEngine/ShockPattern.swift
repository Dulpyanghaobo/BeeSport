//
//  ShockEngine.swift
//  HealthFoodScanner
//
//  Created by 杨皓博 on 2021/9/7.
//  Copyright © 2021 IntSig Information Co., Ltd. All rights reserved.
//

import Foundation

public class ShockPattern {
    var pattern: String
    var delay: Double
    
    init(pattern: String, delay: Double = 0.02) {
        self.pattern = pattern
        self.delay = delay
    }
}
