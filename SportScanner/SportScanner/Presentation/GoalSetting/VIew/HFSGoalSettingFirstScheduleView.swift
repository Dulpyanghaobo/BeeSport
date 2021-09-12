//
//  HFSGoalSettingFirstScheduleView.swift
//  SportScanner
//
//  Created by 杨皓博 on 2021/9/12.
//

import UIKit


class HFSGoalSettingFirstBackView: HFSNiblessView {
    
    lazy fileprivate var gainButton : UIButton = {
        let button = UIButton.init(type: .custom)
        button.setTitleColor(HFSColor.black1Color(), for: .normal)
        button.setTitle(NSLocalizedString("gain", comment: "gain"), for: .normal)
        button.titleLabel?.font = HFSFont.mediumFont(withSize: 16)
        button.backgroundColor = HFSColor.white()
        button.layer.cornerRadius = 16
        button.layer.borderWidth = 2
        button.layer.borderColor = HFSColor.lightGray2Color().cgColor
        return button
    }()
    lazy fileprivate var loseButton : UIButton = {
        let button = UIButton.init(type: .custom)
        button.setTitleColor(HFSColor.black1Color(), for: .normal)
        button.setTitle(NSLocalizedString("gain", comment: "gain"), for: .normal)
        button.titleLabel?.font = HFSFont.mediumFont(withSize: 16)
        button.backgroundColor = HFSColor.white()
        button.layer.cornerRadius = 16
        button.layer.borderWidth = 2
        button.layer.borderColor = HFSColor.lightGray2Color().cgColor
        return button
    } ()
    lazy fileprivate var mainButton : UIButton = {
        let button = UIButton.init(type: .custom)
        button.setTitleColor(HFSColor.black1Color(), for: .normal)
        button.setTitle(NSLocalizedString("gain", comment: "gain"), for: .normal)
        button.titleLabel?.font = HFSFont.mediumFont(withSize: 16)
        button.backgroundColor = HFSColor.white()
        button.layer.cornerRadius = 16
        button.layer.borderWidth = 2
        button.layer.borderColor = HFSColor.lightGray2Color().cgColor
        return button
    } ()
    lazy fileprivate var contineButton : UIButton = {
        let button = UIButton.init(type: .custom)
        button.setTitleColor(HFSColor.black1Color(), for: .normal)
        button.setTitle(NSLocalizedString("gain", comment: "gain"), for: .normal)
        button.titleLabel?.font = HFSFont.mediumFont(withSize: 16)
        button.backgroundColor = HFSColor.white()
        button.layer.cornerRadius = 16
        button.layer.borderWidth = 2
        button.layer.borderColor = HFSColor.lightGray2Color().cgColor
        return button
    } ()

    @objc func clickedGainButtonAction(sender: UIButton) {
        
    }
    
    @objc func clickedLoseButtonAction(sender: UIButton) {
        
    }
    
    @objc func clickedMainButtonAction(sender: UIButton) {
        
    }
    

    
    override init(frame: CGRect) {
       
        super.init(frame: frame)
      
        backgroundColor = .white
        addSubview(contineButton)

        addSubview(gainButton)
        addSubview(loseButton)
        addSubview(mainButton)
        contineButton.snp.makeConstraints{(make) in
            make.bottom.equalToSuperview().offset(-HFSSafBottomSpace-8)
            make.left.equalToSuperview().offset(32)
            make.right.equalToSuperview().offset(-32)
            make.height.equalTo(48)
        }
        loseButton.snp.makeConstraints{(make) in
            make.height.left.right.equalTo(contineButton)
            make.bottom.equalTo(self.contineButton.snp.top).offset(-24)
        }
        mainButton.snp.makeConstraints{(make) in
            make.height.left.right.equalTo(contineButton)
            make.bottom.equalTo(self.loseButton.snp.top).offset(-8)
        }
        gainButton.snp.makeConstraints{(make) in
            make.height.left.right.equalTo(contineButton)
            make.bottom.equalTo(self.mainButton.snp.top).offset(-8)
        }
    }
    
    
}

class HFSGoalSettingFirstScheduleView: HFSNiblessView {

    fileprivate let goalSettingBackView = HFSGoalSettingFirstBackView()
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(goalSettingBackView)
        goalSettingBackView.snp.makeConstraints{(make) in
            make.edges.equalToSuperview().inset(UIEdgeInsets.zero)
        }
    }
}
