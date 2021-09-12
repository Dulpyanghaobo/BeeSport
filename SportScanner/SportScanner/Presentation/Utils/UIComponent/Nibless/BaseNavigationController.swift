//
//  BaseNavigationController.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/12.
//

import UIKit

protocol HideNavigationBarProtocol where Self: UIViewController {}


final class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.interactivePopGestureRecognizer?.delegate = self
        
       
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool){
        if children.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if (viewController is HideNavigationBarProtocol) {
            self.setNavigationBarHidden(true, animated: true)
        }else {
            self.setNavigationBarHidden(false, animated: false)
        }
    }
    
    @objc private func back() {
        
        self.popViewController(animated: true)
        
    }
}

extension BaseNavigationController: UIGestureRecognizerDelegate {}
