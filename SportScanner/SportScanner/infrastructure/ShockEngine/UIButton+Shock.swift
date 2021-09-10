//
//  UIButton+Shock.swift
//  HealthFoodScanner
//
//  Created by 杨皓博 on 2021/9/7.
//  Copyright © 2021 IntSig Information Co., Ltd. All rights reserved.
//

import UIKit

class ShockButton: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addTarget(self, action: #selector(didPress), for: .touchDown)
        addTarget(self, action: #selector(didRelease), for: .touchUpInside)
        addTarget(self, action: #selector(didRelease), for: .touchUpOutside)
    }
    
    @objc private func didPress() {
        Shock.shared().generate(impact: .heavy)
    }
    
    @objc private func didRelease() {
        Shock.shared().generate(impact: .light)
    }
}
