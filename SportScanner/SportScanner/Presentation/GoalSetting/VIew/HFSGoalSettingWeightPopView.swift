//
//  HFSGoalSettingWeightPopView.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/12.
//

import UIKit

class HFSGoalSettingWeightPopView: BottomPopupViewController {

    var height: CGFloat?
    
    var topCornerRadius: CGFloat?
    
    var presentDuration: Double?
    
    var dismissDuration: Double?
    
    var shouldDismissInteractivelty: Bool?
    
    // Bottom popup attribute variables
    // You can override the desired variable to change appearance
    
    override var popupHeight: CGFloat { return height ?? CGFloat(300) }
    
    override var popupTopCornerRadius: CGFloat { return topCornerRadius ?? CGFloat(10) }
    
    override var popupPresentDuration: Double { return presentDuration ?? 1.0 }
    
    override var popupDismissDuration: Double { return dismissDuration ?? 1.0 }
    
    override var popupShouldDismissInteractivelty: Bool { return shouldDismissInteractivelty ?? true }
    
    override var popupDimmingViewAlpha: CGFloat { return BottomPopupConstants.kDimmingViewDefaultAlphaValue }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
