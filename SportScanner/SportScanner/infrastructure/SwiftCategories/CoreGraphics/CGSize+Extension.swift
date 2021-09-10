//
//  CGSize+Extension.swift
//  HealthFoodScanner
//
//  Created by 杨皓博 on 2021/9/8.
//  Copyright © 2021 IntSig Information Co., Ltd. All rights reserved.
//

import UIKit

extension CGSize {
    var scaledSize: CGSize {
        .init(width: width * UIScreen.main.scale, height: height * UIScreen.main.scale)
    }
}
