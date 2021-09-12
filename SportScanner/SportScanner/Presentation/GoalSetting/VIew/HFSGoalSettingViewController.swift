//
//  HFSGoalSettingViewController.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/12.
//

import UIKit

class HFSGoalSettingViewController: UIViewController {

    fileprivate let firstView : HFSGoalSettingFirstScheduleView = {
        let firstView = HFSGoalSettingFirstScheduleView(frame: CGRect(x: 0, y: 0, width: HFSScreenWidth, height: HFSScreenHeight))
        
        return firstView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews() {
        view.addSubview(firstView)
        
    }
    
}
