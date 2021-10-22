//
//  SSCenterButton.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/27.
//

/// Button封装
import UIKit

protocol HBButton
{
    var callBack : (_ object : AnyObject) -> Void?{get set}
    
    /// 点击行为产生动画
    func animation()
}

class HBBaseButton : UIView {
    var callBack : (_ object : AnyObject) -> Void?
    
    
    
}

extension HBBaseButton : HBButton {
    
    /// 点击行为产生动画
    func animation() {
        
    }
}


